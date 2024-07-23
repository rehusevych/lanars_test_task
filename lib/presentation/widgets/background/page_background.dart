import 'package:flutter/material.dart';
import 'package:lanars_test_task/presentation/core/colors.dart';

class PageBackground extends StatelessWidget {
  final Color backgroundColor;
  final AppBar? appBar;
  final Widget child;

  const PageBackground({
    super.key,
    required this.child,
    this.appBar,
    this.backgroundColor = AppColors.background,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: SafeArea(
        child: child,
      ),
    );
  }
}
