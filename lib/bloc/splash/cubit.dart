import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';
import 'package:lanars_test_task/data/user/model/user.dart';
import 'package:lanars_test_task/data/user/repository.dart';

part 'cubit.freezed.dart';
part 'state.dart';

class SplashCubit extends Cubit<SplashState> {
  final UserRepository _userRepository;

  SplashCubit({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const _Loading());

  void initial() async {
    final currentUser = await _userRepository.getCurrentUser().match(
      (l) {
        emit(const SplashState.auth());
      },
      (user) => user,
    ).run();

    if (currentUser != null) {
      emit(
        SplashState.homeWithUser(currentUser),
      );
    } else {
      emit(const SplashState.auth());
    }
  }
}
