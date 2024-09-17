import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lanars_test_task/presentation/core/constants/hive_type_id.dart';

part 'id_data.g.dart';
part 'id_data.freezed.dart';

@freezed
class IdData with _$IdData {
  @HiveType(typeId: userIdTypeId)
  const factory IdData({
    @HiveField(0) String? name,
    @HiveField(1) String? value,
  }) = _IdData;

  factory IdData.fromJson(Map<String, dynamic> json) => _$IdDataFromJson(json);
}
