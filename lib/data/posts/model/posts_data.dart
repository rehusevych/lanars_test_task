import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lanars_test_task/data/posts/model/source_data/source_data.dart';
import 'package:lanars_test_task/presentation/core/constants/hive_type_id.dart';

part 'posts_data.freezed.dart';
part 'posts_data.g.dart';
part 'posts_data.hive.dart';

@freezed
class PostsData with _$PostsData {
  @HiveType(typeId: postsDataTypeId)
  const factory PostsData({
    @HiveField(0) required int id,
    @HiveField(1) required String photographer,
    @HiveField(2) required SourceData src,
    @HiveField(3) @Default("") String alt,
  }) = _PostsData;

  factory PostsData.fromJson(Map<String, dynamic> json) =>
      _$PostsDataFromJson(json);
}
