import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lanars_test_task/bloc/posts/cubit.dart';
import 'package:lanars_test_task/bloc/user/cubit.dart';
import 'package:lanars_test_task/data/posts/posts_realm_repository.dart';
import 'package:lanars_test_task/presentation/core/injectable.dart';

@RoutePage()
class AuthenticatedWrapperPage extends StatefulWidget {
  const AuthenticatedWrapperPage({super.key});

  @override
  State<AuthenticatedWrapperPage> createState() => _AuthenticatedWrapperPageState();
}

class _AuthenticatedWrapperPageState extends State<AuthenticatedWrapperPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (c) => PostsCubit(
            repository: c.read(),
            postsRealmRepository: getIt.get<PostsRealmRepository>(),
          )..getData(),
        ),
        BlocProvider(
          create: (c) => UserCubit(
            userRepository: c.read(),
          )..getData(),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
