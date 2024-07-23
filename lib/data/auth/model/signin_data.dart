import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_data.g.dart';
part 'signin_data.freezed.dart';

@freezed
class SignInData with _$SignInData {
  const factory SignInData({
    required String email,
    required String password,
  }) = _SignInData;

  factory SignInData.fromJson(Map<String, dynamic> json) =>
      _$SignInDataFromJson(json);
}
