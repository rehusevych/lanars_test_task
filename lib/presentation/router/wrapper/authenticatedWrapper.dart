import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticatedWrapperPage extends StatefulWidget {
  const AuthenticatedWrapperPage({Key? key}) : super(key: key);

  @override
  State<AuthenticatedWrapperPage> createState() =>
      _AuthenticatedWrapperPageState();
}

class _AuthenticatedWrapperPageState extends State<AuthenticatedWrapperPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (c) => UserCubit(
        //     userRepository: c.read(),
        //   )..getData(),
        // ),
      ],
      child: const AutoRouter(),
    );
  }
}
