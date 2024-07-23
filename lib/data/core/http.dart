import 'dart:convert';

import 'package:dartx/dartx.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:lanars_test_task/data/auth/refresh_token_repository.dart';
import 'package:lanars_test_task/data/auth/token_store.dart';
import 'package:lanars_test_task/data/core/token.dart';
import 'package:lanars_test_task/data/core/utils/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const baseUrl = "https://www.pexels.com/api";
const authBaseUrl = "https://randomuser.me/api";

const _connectionTimeout = 15000;
const _receiveTimeout = 15000;

Map<String, String> authHeader(String token) =>
    {"Authorization": "Bearer $token"};

Options authOptions(String token) => Options();

Dio createDio(String baseUrl, {Map<String, dynamic>? headers}) {
  Dio dio = Dio();

  dio.options.baseUrl = baseUrl;
  dio.options.connectTimeout = _connectionTimeout;
  dio.options.receiveTimeout = _receiveTimeout;
  _installResponseDecoder(dio);
  if (headers != null) dio.options.headers.addAll(headers);

  if (kDebugMode) _installLogger(dio);

  return dio;
}

Dio createAuthDio() {
  Dio dio = Dio();

  dio.options.baseUrl = authBaseUrl;
  dio.options.connectTimeout = _connectionTimeout;
  dio.options.receiveTimeout = _receiveTimeout;

  if (kDebugMode) _installLogger(dio);

  return dio;
}

Dio createAuthenticatedDio(
  String url, {
  required TokenRefresher refresher,
  List<Interceptor>? additionalInterceptors,
}) {
  final dio = createDio(url);

  _installAuthentication(dio, refresher.store);
  _installRefresh(dio, refresher);

  if (additionalInterceptors != null) {
    dio.interceptors.addAll(additionalInterceptors);
  }

  return dio;
}

extension AuthenticatedDioEx on Interceptors {
  HttpAuthInterceptor? get _authInterceptor =>
      firstOrNullWhere((e) => e is HttpAuthInterceptor) as HttpAuthInterceptor?;

  RefreshInterceptor? get _refreshInterceptor =>
      firstOrNullWhere((e) => e is RefreshInterceptor) as RefreshInterceptor?;

  void addUnauthenticatedListener(VoidCallback callback) {
    _authInterceptor?.addListener(callback);
    _refreshInterceptor?.addListener(callback);
  }

  void removeUnauthenticatedListener(VoidCallback callback) {
    _authInterceptor?.removeListener(callback);
    _refreshInterceptor?.removeListener(callback);
  }
}

void _installLogger(Dio dio) {
  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    ),
  );
}

HttpAuthInterceptor _installAuthentication(Dio dio, AppAuthTokenStore store) {
  final interceptor = HttpAuthInterceptor(store: store);

  dio.interceptors.add(interceptor);

  return interceptor;
}

RefreshInterceptor _installRefresh(Dio dio, TokenRefresher refresher) {
  var interceptor = RefreshInterceptor(
    refresher: refresher,
    authenticatedDio: dio,
  );

  dio.interceptors.add(interceptor);

  return interceptor;
}

ResponseDecoderInterceptor _installResponseDecoder(Dio dio) {
  final interceptor = ResponseDecoderInterceptor();

  dio.interceptors.add(interceptor);

  return interceptor;
}

class ResponseDecoderInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data is int) return super.onResponse(response, handler);
    try {
      response.data = jsonDecode(response.data);
    } catch (_) {}
    return super.onResponse(response, handler);
  }
}

class HttpAuthInterceptor extends Interceptor with ChangeNotifier {
  final AppAuthTokenStore store;

  HttpAuthInterceptor({
    required this.store,
  });

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    var requestOptions = options;
    try {
      final token = await store.getToken();
      requestOptions =
          requestOptions.copyWith(headers: authOptions(token).headers);
    } on MissingTokenException {
      notifyListeners();
    }
    handler.next(requestOptions);
  }
}

class RefreshInterceptor extends Interceptor with ChangeNotifier {
  final TokenRefresher refresher;
  final Dio authenticatedDio;

  RefreshInterceptor({
    required this.refresher,
    required this.authenticatedDio,
  });

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    final code = maybeResponseCode(err);
    if (code == 401 || code == 402) {
      try {
        final refreshedToken = await refresher.refresh();

        //update token based on the new refresh token
        final options = err.requestOptions.copyWith(
          headers: authOptions(refreshedToken).headers,
        );

        final response = await authenticatedDio.fetch(options);

        // repeat the request with a new options
        handler.resolve(response);
      } catch (e) {
        final code = maybeResponseCode(e);
        if (code == 401) {
          notifyListeners();
        }
      }
    }
    handler.next(err);
  }
}
