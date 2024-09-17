import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';
import 'package:lanars_test_task/data/core/utils/dio.dart';
import 'package:lanars_test_task/data/posts/model/posts_realm/posts_realm_model.dart';
import 'package:lanars_test_task/data/posts/posts_realm_repository.dart';

part 'cubit.freezed.dart';

part 'state.dart';

class PostsLocalCubit extends Cubit<PostsLocalState> {
  final PostsRealmRepository _postsRealmRepository;

  PostsLocalCubit({
    required PostsRealmRepository postsRealmRepository,
  })  : _postsRealmRepository = postsRealmRepository,
        super(
          const PostsLocalState.loading(),
        );

  Future<void> getData() async {
    try {
      final posts = await _postsRealmRepository.getAllPosts();
      emit(
        PostsLocalState.loaded(data: posts),
      );
    } catch (error, stackTrace) {
      emit(
        PostsLocalState.failed(responseFailure(error, stackTrace)),
      );
    }
  }

  Future<void> deletePostFromRealm(
    PostsRealmModel model, {
    VoidCallback? onFailed,
  }) async {
    try {
      await _postsRealmRepository.deletePost(model);
      getData();
    } catch (exception) {
      onFailed?.call();
    }
  }
}
