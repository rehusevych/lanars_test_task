import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture_data.g.dart';
part 'picture_data.freezed.dart';

@freezed
class PictureData with _$PictureData {
  const factory PictureData({
    required String large,
    required String medium,
    required String thumbnail,
  }) = _PictureData;

  factory PictureData.fromJson(Map<String, dynamic> json) =>
      _$PictureDataFromJson(json);
}
