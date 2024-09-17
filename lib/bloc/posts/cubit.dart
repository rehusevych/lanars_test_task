import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lanars_test_task/bloc/core/subscription_bloc.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';
import 'package:lanars_test_task/data/core/model/page/page.dart';
import 'package:lanars_test_task/data/posts/model/posts_data.dart';
import 'package:lanars_test_task/data/posts/model/posts_realm/posts_realm_model.dart';
import 'package:lanars_test_task/data/posts/posts_realm_repository.dart';
import 'package:lanars_test_task/data/posts/repository.dart';
import 'package:lanars_test_task/presentation/core/util/extensions.dart';

part 'cubit.freezed.dart';

part 'state.dart';

class PostsCubit extends Cubit<PostsState> with SubscriptionCubit<PostsState> {
  final PostsRepository _repository;
  final PostsRealmRepository _postsRealmRepository;

  PostsCubit({
    required PostsRepository repository,
    required PostsRealmRepository postsRealmRepository,
  })  : _repository = repository,
        _postsRealmRepository = postsRealmRepository,
        super(
          const _Loading(),
        );

  void getData({
    bool forceReload = false,
  }) {
    final page = forceReload ? PageData(page: state.page.page + 1) : const PageData(page: 1);

    _repository
        .getData(
          page,
          forceRemote: false,
        )
        .match(
          (f) => _Failed(
            data: state.data,
            page: page,
            failure: f,
          ),
          (r) {
            final List<PostsData> posts = List.from([...r.embedded.items]);
            posts.sort((a, b) {
              return a.photographer.toLowerCase().compareTo(b.photographer.toLowerCase());
            });
            final sortedPosts = _valuesByPhotographerName(posts);
            return sortedPosts.keys.isEmpty
                ? _Empty(data: state.data, page: page)
                : _Loaded(data: sortedPosts, page: page);
          },
        )
        .run()
        .then(emit);
  }

  Map<String, List<PostsData>> _valuesByPhotographerName(List<PostsData> posts) {
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

  Future<bool> addPostToRealm(
    PostsRealmModel model, {
    VoidCallback? onFailed,
  }) async {
    try {
      await _postsRealmRepository.addPost(model);
      return true;
    } catch (exception) {
      onFailed?.call();
      return false;
    }
  }
}
