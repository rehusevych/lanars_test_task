import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lanars_test_task/data/hive_module.dart';
import 'package:lanars_test_task/data/user/repository.dart';
import 'package:lanars_test_task/presentation/router/router.gr.dart';

Future<void> clearHive() => Future.wait(getAllBoxes().map((e) => e.clear()));

Future<void> logout(
  BuildContext context, {
  Dio? authenticatedDio,
  UserRepository? repo,
}) async {
  authenticatedDio ??= context.read<Dio>();
  repo ??= context.read<UserRepository>();

  await repo.logout();

  await Future.wait([
    clearHive(),
  ]);

  unawaited(
    // ignore: use_build_context_synchronously
    context.router.root.pushAndPopUntil(
      const SplashRoute(),
      predicate: (f) => false,
    ),
  );
}
