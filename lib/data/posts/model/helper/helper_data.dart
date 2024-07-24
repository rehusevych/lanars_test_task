import 'package:hive_flutter/hive_flutter.dart';
import 'package:lanars_test_task/data/core/service/helper/helper_data.dart';
import 'package:lanars_test_task/data/posts/model/posts_data.dart';
import 'package:lanars_test_task/presentation/core/constants/hive_type_id.dart';

part 'helper_data.hive.dart';

@HiveType(typeId: postsHelperTypeId)
class PostsHelperData extends HelperData<PostsData> {
  @HiveField(0)
  final List<PostsData> items;

  PostsHelperData(this.items) : super(items);
}
