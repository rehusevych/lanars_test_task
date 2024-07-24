import 'package:hive_flutter/hive_flutter.dart';
import 'package:lanars_test_task/data/hive_module.dart';
import 'package:lanars_test_task/data/posts/model/helper/helper_data.dart';
import 'package:lanars_test_task/data/posts/model/posts_data.dart';
import 'package:lanars_test_task/data/posts/model/source_data/source_data.dart';
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
    ..registerAdapter(PictureDataImplAdapter())
    ..registerAdapter(PostsDataImplAdapter())
    ..registerAdapter(SourceDataImplAdapter())
    ..registerAdapter(PostsHelperDataAdapter());

  await createBoxes();
}
