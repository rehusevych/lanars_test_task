import 'package:hive_flutter/hive_flutter.dart';
import 'package:lanars_test_task/data/posts/model/helper/helper_data.dart';
import 'package:lanars_test_task/data/posts/model/posts_data.dart';
import 'package:lanars_test_task/data/user/model/user.dart';
import 'package:provider/provider.dart';

class _BoxNames {
  _BoxNames._();
  static const user = 'user';
  static const posts = 'posts';
  static const postsHelper = 'posts_helper';
}

Future<List<BoxBase>> createBoxes() => Future.wait([
      Hive.openLazyBox<UserData>(_BoxNames.user),
      Hive.openLazyBox<PostsHelperData>(_BoxNames.postsHelper),
      Hive.openLazyBox<PostsData>(_BoxNames.posts),
    ]);

List<Provider> createLazyBoxProviders() => [
      Provider<LazyBox<UserData>>(
        create: (c) => Hive.lazyBox<UserData>(_BoxNames.user),
      ),
      Provider<LazyBox<PostsHelperData>>(
        create: (c) => Hive.lazyBox<PostsHelperData>(_BoxNames.postsHelper),
      ),
      Provider<LazyBox<PostsData>>(
        create: (c) => Hive.lazyBox<PostsData>(_BoxNames.posts),
      ),
    ];

List<BoxBase> getAllBoxes() => [
      Hive.lazyBox<UserData>(_BoxNames.user),
      Hive.lazyBox<PostsHelperData>(_BoxNames.postsHelper),
      Hive.lazyBox<PostsData>(_BoxNames.posts),
    ];
