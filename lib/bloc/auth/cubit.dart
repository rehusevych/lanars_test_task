import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';
import 'package:lanars_test_task/data/user/model/user.dart';
import 'package:lanars_test_task/data/user/repository.dart';

part 'cubit.freezed.dart';

part 'state.dart';

class AuthCubit extends Cubit<AuthState> {
  final UserRepository _userRepository;

  AuthCubit({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const _Empty());

  void login({
    required String email,
    required String password,
  }) async {
    emit(const _Loading());

    _userRepository
        .signInWithCredentials(email, password)
        .match(
          AuthState.failed,
          AuthState.signInSuccess,
        )
        .run()
        .then(emit);
  }
}
