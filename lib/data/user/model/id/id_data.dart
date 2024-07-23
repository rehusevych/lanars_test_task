import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_data.g.dart';
part 'id_data.freezed.dart';

@freezed
class IdData with _$IdData {
  const factory IdData({
    required String name,
    required String value,
  }) = _IdData;

  factory IdData.fromJson(Map<String, dynamic> json) => _$IdDataFromJson(json);
}
