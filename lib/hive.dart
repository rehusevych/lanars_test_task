import 'package:hive_flutter/hive_flutter.dart';
import 'package:lanars_test_task/data/hive_module.dart';
import 'package:lanars_test_task/data/user/model/user.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserDataImplAdapter());

  await createBoxes();
}
