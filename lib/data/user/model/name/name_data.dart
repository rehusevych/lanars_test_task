import 'package:freezed_annotation/freezed_annotation.dart';

part 'name_data.g.dart';
part 'name_data.freezed.dart';

@freezed
class NameData with _$NameData {
  const factory NameData({
    required String title,
    required String first,
    required String last,
  }) = _NameData;

  factory NameData.fromJson(Map<String, dynamic> json) =>
      _$NameDataFromJson(json);
}
