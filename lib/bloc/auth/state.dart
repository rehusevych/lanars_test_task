part of 'cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.empty() = _Empty;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.failed(Failure failure) = _Failure;
  const factory AuthState.signInSuccess(UserData user) = _SignInSuccess;
}
