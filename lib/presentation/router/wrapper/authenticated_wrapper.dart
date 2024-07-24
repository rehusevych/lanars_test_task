import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AuthenticatedWrapperPage extends StatefulWidget {
  const AuthenticatedWrapperPage({Key? key}) : super(key: key);

  @override
  State<AuthenticatedWrapperPage> createState() =>
      _AuthenticatedWrapperPageState();
}

class _AuthenticatedWrapperPageState extends State<AuthenticatedWrapperPage> {
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
