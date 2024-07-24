import 'package:fpdart/fpdart.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';
import 'package:lanars_test_task/data/core/model/page/page.dart';
import 'package:lanars_test_task/data/core/service/store.dart';
import 'package:lanars_test_task/data/posts/model/helper/helper_data.dart';
import 'package:lanars_test_task/data/posts/model/posts_data.dart';
import 'package:lanars_test_task/data/posts/service/local.dart';
import 'package:lanars_test_task/data/posts/service/remote.dart';

class PostsRepository {
  final PostsServiceRemote _remote;
  final PostsServiceLocal _local;

  const PostsRepository({
    required PostsServiceRemote remote,
    required PostsServiceLocal local,
  })  : _remote = remote,
        _local = local;

  Stream<Either<Failure, List<PostsData>>> watch() {
    return _local.watch0();
  }

  TaskEither<Failure, List<PostsData>> getData(
    PageData page, {
    bool forceRemote = false,
  }) {
    saveToLocal(List<PostsData> data) =>
        _local.saveData0(PostsHelperData(data));

    getRemoteAndStore() => _remote.getPosts(page).flatMap((r) {
          final posts = r.embedded.items;
          return saveToLocal(posts);
        });

    return forceRemote
        ? getRemoteAndStore()
        : _local.getData0().alt(() => getRemoteAndStore());
  }
}
