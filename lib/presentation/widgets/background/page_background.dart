import 'package:flutter/material.dart';
import 'package:lanars_test_task/presentation/core/colors.dart';

class PageBackground extends StatelessWidget {
  final Widget child;

  const PageBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: child,
    );
  }
}
