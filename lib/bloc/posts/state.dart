part of 'cubit.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.loading({
    @Default({"": <PostsData>[]}) Map<String, List<PostsData>> data,
    @Default(PageData()) PageData page,
  }) = _Loading;
  const factory PostsState.empty({
    required Map<String, List<PostsData>> data,
    required PageData page,
  }) = _Empty;
  const factory PostsState.failed({
    required Map<String, List<PostsData>> data,
    required PageData page,
    required Failure failure,
  }) = _Failed;
  const factory PostsState.loaded({
    required Map<String, List<PostsData>> data,
    required PageData page,
  }) = _Loaded;
}
