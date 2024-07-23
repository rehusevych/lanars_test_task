import 'package:flutter_bloc/flutter_bloc.dart';

class LoggingBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    // ignore: avoid_print
    print('${bloc.runtimeType}.onCreate');
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    // ignore: avoid_print
    print('${bloc.runtimeType}.onClose');
    super.onClose(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // ignore: avoid_print
    print('${bloc.runtimeType}.onEvent $event');
    super.onEvent(bloc, event);
  }

  @override
  onTransition(Bloc bloc, Transition transition) {
    // ignore: avoid_print
    print('${bloc.runtimeType}.onTransition $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    // ignore: avoid_print
    print('${bloc.runtimeType}.onChange $change');
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // ignore: avoid_print
    print('${bloc.runtimeType}.onError $error');
    super.onError(bloc, error, stackTrace);
  }
}
