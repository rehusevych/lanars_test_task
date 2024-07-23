import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

mixin MultiSubscriptionBloc<E, S> on Bloc<E, S> {
  final _streamSubscriptions = <StreamSubscription>[];

  void registerSubscription(StreamSubscription subscription) {
    _streamSubscriptions.add(subscription);
  }

  @override
  Future<void> close() async {
    await Future.wait(
      _streamSubscriptions.map((subscription) => subscription.cancel()),
    );
    await super.close();
  }
}

mixin MultiSubscriptionCubit<S> on Cubit<S> {
  final _streamSubscriptions = <StreamSubscription>[];

  void registerSubscription(StreamSubscription subscription) {
    _streamSubscriptions.add(subscription);
  }

  @override
  Future<void> close() async {
    await Future.wait(
      _streamSubscriptions.map((subscription) => subscription.cancel()),
    );
    await super.close();
  }
}
