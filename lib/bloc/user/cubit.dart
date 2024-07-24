import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lanars_test_task/bloc/core/subscription_bloc.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';
import 'package:lanars_test_task/data/user/model/user.dart';
import 'package:lanars_test_task/data/user/repository.dart';
import 'package:rxdart/rxdart.dart';

part 'cubit.freezed.dart';
part 'state.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepository _userRepository;

  UserCubit({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const _Loading());

  void getData() {
    _userRepository
        .getCurrentUser()
        .match(
          UserState.failed,
          UserState.loaded,
        )
        .run()
        .then(emit);
  }
}
