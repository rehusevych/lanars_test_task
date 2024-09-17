import 'dart:io';

import 'package:dio/dio.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';

int? maybeResponseCode(dynamic error, {bool gatherValidation = true}) {
  if (error is DioException && error.type == DioExceptionType.badResponse) {
    return error.response?.statusCode;
  }

  return null;
}

Failure responseFailure(
  Object error,
  StackTrace? stackTrace, {
  String? reason,
}) {
  if (error is DioException) {
    if (error.type == DioExceptionType.unknown) {
      if (error.error is SocketException) {
        return const Failure.network();
      }
    } else if (error.type == DioExceptionType.badResponse) {
      final code = error.response?.statusCode;
      return code == null
          ? Failure.unexpected(error, stackTrace)
          : Failure.statusCode(
              code,
              error,
              stackTrace,
            );
    }
  }

  return Failure.unexpected(error, stackTrace);
}
