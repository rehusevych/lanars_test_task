import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lanars_test_task/presentation/core/constants/hive_type_id.dart';

part 'name_data.g.dart';
part 'name_data.freezed.dart';

@freezed
class NameData with _$NameData {
  @HiveType(typeId: userNameTypeId)
  const factory NameData({
   @HiveField(0) required String title,
   @HiveField(1) required String first,
   @HiveField(2) required String last,
  }) = _NameData;

  factory NameData.fromJson(Map<String, dynamic> json) =>
      _$NameDataFromJson(json);
}
