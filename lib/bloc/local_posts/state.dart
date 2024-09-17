part of 'cubit.dart';

@freezed
class PostsLocalState with _$PostsLocalState {
  const factory PostsLocalState.loading() = _Loading;
  const factory PostsLocalState.empty() = _Empty;
  const factory PostsLocalState.failed(
    Failure failure,
  ) = _Failed;
  const factory PostsLocalState.loaded({
    required List<PostsRealmModel> data,
  }) = _Loaded;
}
