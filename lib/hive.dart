import 'package:hive_flutter/hive_flutter.dart';
import 'package:lanars_test_task/data/hive_module.dart';
import 'package:lanars_test_task/data/user/model/id/id_data.dart';
import 'package:lanars_test_task/data/user/model/name/name_data.dart';
import 'package:lanars_test_task/data/user/model/picture/picture_data.dart';
import 'package:lanars_test_task/data/user/model/user.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive
    ..registerAdapter(UserDataImplAdapter())
    ..registerAdapter(IdDataImplAdapter())
    ..registerAdapter(NameDataImplAdapter())
    ..registerAdapter(PictureDataImplAdapter());

  await createBoxes();
}
