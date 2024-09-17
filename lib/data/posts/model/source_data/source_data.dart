import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lanars_test_task/presentation/core/constants/hive_type_id.dart';

part 'source_data.g.dart';
part 'source_data.freezed.dart';

@freezed
class SourceData with _$SourceData {
  @HiveType(typeId: postsSourceTypeId)
  const factory SourceData({
    @HiveField(0) required String original,
    @HiveField(1) required String large,
    @HiveField(2) required String medium,
    @HiveField(3) required String small,
    @HiveField(4) required String portrait,
    @HiveField(5) required String tiny,
  }) = _SourceData;

  factory SourceData.fromJson(Map<String, dynamic> json) => _$SourceDataFromJson(json);
}
