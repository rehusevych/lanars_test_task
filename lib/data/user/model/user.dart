import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lanars_test_task/data/user/model/id/id_data.dart';
import 'package:lanars_test_task/data/user/model/name/name_data.dart';
import 'package:lanars_test_task/data/user/model/picture/picture_data.dart';
import 'package:lanars_test_task/presentation/core/constants/hive_type_id.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserData with _$UserData {
  @HiveType(typeId: userDataTypeId)
  const factory UserData({
    @HiveField(0) required IdData id,
    @HiveField(1) required NameData name,
    @HiveField(2) required String email,
    @HiveField(3) String? gender,
    @HiveField(4) String? phone,
    @HiveField(5) String? cell,
    @HiveField(6) PictureData? picture,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}
