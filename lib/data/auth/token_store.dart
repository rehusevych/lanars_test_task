import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lanars_test_task/data/core/token.dart';

class AppAuthTokenStore extends AuthTokenStore {
  static const String tokenKey = 'token';
  static const String refreshTokenKey = 'refresh_token';

  const AppAuthTokenStore({required FlutterSecureStorage secureStorage})
      : super(secureStorage, tokenKey);
}
