import 'package:fpdart/fpdart.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';
import 'package:lanars_test_task/data/core/model/page/page.dart';
import 'package:lanars_test_task/data/core/model/pagination_data/pagination_data.dart';
import 'package:lanars_test_task/data/core/service/store.dart';
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

  TaskEither<Failure, PaginationData<PostsData>> getData(
    PageData page, {
    bool forceRemote = false,
  }) {
    return _remote.getPosts(page);
  }
}
