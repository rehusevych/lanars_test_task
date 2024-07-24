import 'package:hive_flutter/hive_flutter.dart';
import 'package:lanars_test_task/data/core/service/store.dart';
import 'package:lanars_test_task/data/posts/model/helper/helper_data.dart';
import 'package:lanars_test_task/data/posts/model/posts_data.dart';

const String _key = "posts";

class PostsServiceLocal
    extends ListBoxStore<String, PostsData, PostsHelperData> {
  PostsServiceLocal(LazyBox<PostsHelperData> box) : super((_) => _key, box);
}
