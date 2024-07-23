import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lanars_test_task/bloc/core/observers/logging.dart';
import 'package:lanars_test_task/hive.dart';
import 'package:lanars_test_task/presentation/core/app.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      if (kDebugMode) {
        Bloc.observer = LoggingBlocObserver();
      }
      await initHive();

      final sharedPreferences = await SharedPreferences.getInstance();
      runApp(
        App(sharedPreferences: sharedPreferences),
      );
    },
    ((error, stack) => debugPrint(
          error.toString(),
        )),
  );
}
