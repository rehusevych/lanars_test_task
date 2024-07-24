import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';
import 'package:lanars_test_task/data/core/service/store.dart';
import 'package:lanars_test_task/data/user/model/user.dart';

class UserServiceLocal extends BoxStore<String, UserData> {
  static const keyName = 'user';

  UserServiceLocal(LazyBox<UserData> box) : super((i) => keyName, box);

  TaskEither<Failure, UserData> getData0() => getData('');

  TaskEither<Failure, UserData> saveData0(UserData user) => saveData('', user);

  Stream<Either<Failure, UserData>> watch0() => watch('');

  bool hasUserData() => box.isNotEmpty;
}
