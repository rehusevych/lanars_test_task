import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:lanars_test_task/data/auth/model/signin_data.dart';
import 'package:lanars_test_task/data/auth/token_store.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';
import 'package:lanars_test_task/data/user/model/user.dart';
import 'package:lanars_test_task/data/user/service/local.dart';
import 'package:lanars_test_task/data/user/service/remote.dart';

class UserRepository {
  final AppAuthTokenStore _store;
  final UserServiceRemote _remote;
  final UserServiceLocal _local;

  const UserRepository({
    required AppAuthTokenStore tokenStore,
    required UserServiceRemote remote,
    required UserServiceLocal local,
  })  : _store = tokenStore,
        _remote = remote,
        _local = local;

  Future<void> logout() async {
    if (await _store.hasToken()) {
      _store.clear();
    }
  }

  TaskEither<Failure, UserData> signInWithCredentials(
    String email,
    String password,
  ) {
    return _remote.signIn(SignInData(email: email, password: password));
  }

  TaskEither<Failure, UserData> saveToLocal(UserData user) =>
      _local.saveData0(user);

  TaskEither<Failure, UserData> getCurrentUser() {
    return _local.getData0();
  }
}
