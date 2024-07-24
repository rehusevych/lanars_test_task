import 'package:dio/dio.dart';
import 'package:lanars_test_task/data/auth/model/signin_data.dart';
import 'package:lanars_test_task/data/core/constants/constants.dart';

import 'package:lanars_test_task/data/user/model/user.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter/foundation.dart';

part 'api_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio) = _AuthApiClient;

  @GET("/")
  Future<UserData> signIn(
    @Body() SignInData body,
  );
}

Map<String, dynamic> serializeSignInData(SignInData object) => object.toJson();

UserData deserializeUserData(Map<String, dynamic> json) {
  final parsedJson = json[EmbeddedType.results].first as Map<String, dynamic>;
  return UserData.fromJson(parsedJson);
}

Map<String, dynamic> serializeUserData(UserData object) => object.toJson();
