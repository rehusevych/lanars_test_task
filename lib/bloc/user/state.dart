part of 'cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = _Loading;
  const factory UserState.loaded(UserData user) = _Loaded;
  const factory UserState.failed(Failure failure) = _Failed;
}
