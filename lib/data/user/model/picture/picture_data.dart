import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lanars_test_task/presentation/core/constants/hive_type_id.dart';

part 'picture_data.g.dart';
part 'picture_data.freezed.dart';
part 'picture_data.hive.dart';

@freezed
class PictureData with _$PictureData {
  @HiveType(typeId: userPictureTypeId)
  const factory PictureData({
    @HiveField(0) required String large,
    @HiveField(1) required String medium,
    @HiveField(2) required String thumbnail,
  }) = _PictureData;

  factory PictureData.fromJson(Map<String, dynamic> json) =>
      _$PictureDataFromJson(json);
}
