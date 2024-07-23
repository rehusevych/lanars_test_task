import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

mixin SubscriptionBloc<E, S> on Bloc<E, S> {
  StreamSubscription? _streamSubscription;

  StreamSubscription? get subscription => _streamSubscription;

  set subscription(StreamSubscription? subscription) {
    _streamSubscription?.cancel();
    _streamSubscription = subscription;
  }

  @override
  Future<void> close() async {
    await subscription?.cancel();
    await super.close();
  }
}

mixin SubscriptionCubit<S> on Cubit<S> {
  StreamSubscription? _streamSubscription;

  StreamSubscription? get subscription => _streamSubscription;

  set subscription(StreamSubscription? subscription) {
    _streamSubscription?.cancel();
    _streamSubscription = subscription;
  }

  @override
  Future<void> close() async {
    await subscription?.cancel();
    await super.close();
  }
}
