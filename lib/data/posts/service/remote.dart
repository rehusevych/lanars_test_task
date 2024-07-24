import 'package:fpdart/fpdart.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';
import 'package:lanars_test_task/data/core/model/page/page.dart';
import 'package:lanars_test_task/data/core/model/pagination_data/pagination_data.dart';
import 'package:lanars_test_task/data/core/utils/dio.dart';
import 'package:lanars_test_task/data/posts/model/posts_data.dart';

class PostsServiceRemote {
  final Future<PaginationData<PostsData>> Function(PageData) _getPosts;

  const PostsServiceRemote(
    this._getPosts,
  );

  TaskEither<Failure, PaginationData<PostsData>> getPosts(PageData page) {
    onError(Object error, StackTrace stack) => responseFailure(
          error,
          stack,
          reason: 'while performing request to receive posts',
        );
    return TaskEither.tryCatch(() => _getPosts(page), onError);
  }
}
