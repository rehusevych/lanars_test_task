part of 'cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.loading() = _Loading;
  const factory SplashState.auth() = _Auth;
  const factory SplashState.homeWithUser(UserData user) = _HomeWithUser;
  const factory SplashState.failed(Failure failure) = _Failure;
}
