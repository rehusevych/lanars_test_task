import 'package:fpdart/fpdart.dart';
import 'package:lanars_test_task/data/auth/model/signin_data.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';
import 'package:lanars_test_task/data/core/utils/dio.dart';
import 'package:lanars_test_task/data/user/model/user.dart';

class UserServiceRemote {
  final Future<UserData> Function(SignInData) _signIn;

  const UserServiceRemote(
    this._signIn,
  );

  TaskEither<Failure, UserData> signIn(SignInData credentials) {
    Failure onError(Object error, StackTrace stack) => responseFailure(
          error,
          stack,
          reason: 'while performing request to get user data.',
        );
    return TaskEither.tryCatch(
      () => _signIn(credentials),
      onError,
    );
  }
}
