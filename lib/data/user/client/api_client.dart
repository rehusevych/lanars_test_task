import 'package:dio/dio.dart';
import 'package:lanars_test_task/data/auth/model/signin_data.dart';
import 'package:lanars_test_task/data/core/constants/constants.dart';
import 'package:lanars_test_task/data/user/model/user.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio) = _AuthApiClient;

  @GET("/")
  Future<UserData> signIn(
    @Body() SignInData body,
  );

  UserData deserializeTask(Map<String, dynamic> json) =>
      UserData.fromJson(json[EmbeddedType.results]);
}
