import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lanars_test_task/bloc/core/subscription_bloc.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';
import 'package:lanars_test_task/data/core/model/page/page.dart';
import 'package:lanars_test_task/data/posts/model/posts_data.dart';
import 'package:lanars_test_task/data/posts/repository.dart';
import 'package:lanars_test_task/presentation/core/util/extensions.dart';

part 'cubit.freezed.dart';

part 'state.dart';

class PostsCubit extends Cubit<PostsState> with SubscriptionCubit<PostsState> {
  final PostsRepository _repository;

  PostsCubit({
    required PostsRepository repository,
  })  : _repository = repository,
        super(
          const _Loading(),
        );

  void initial({
    bool forceReload = false,
  }) {
    final page = forceReload
        ? PageData(page: state.page.page + 1)
        : const PageData(page: 1);
    subscription = _repository
        .watch()
        .map(
          (event) => event.match(
            (f) => _Failed(
              data: state.data,
              page: page,
              failure: f,
            ),
            (r) {
              final List<PostsData> posts = List.from([...r]);
              posts.sort((a, b) {
                return a.photographer
                    .toLowerCase()
                    .compareTo(b.photographer.toLowerCase());
              });
              final result = valuesByPhotographerName(posts);
              return result.keys.isEmpty
                  ? _Empty(data: state.data, page: page)
                  : _Loaded(data: result, page: page);
            },
          ),
        )
        .listen(emit);

    _repository
        .getData(
          page,
          forceRemote: true,
        )
        .run();
  }

  Map<String, List<PostsData>> valuesByPhotographerName(List<PostsData> posts) {
    Map<String, List<PostsData>> result = {};
    for (final post in posts) {
      final firstLetter = post.photographer[0].toUpperCase();
      if (result[firstLetter] != null) {
        result[firstLetter]!.add(post);
      } else {
        result[firstLetter] = [post];
      }
    }
    return result.orderByKeys(compareTo: (a, b) => a.compareTo(b));
  }
}
