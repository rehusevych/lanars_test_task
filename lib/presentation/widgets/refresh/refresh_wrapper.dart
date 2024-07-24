import 'package:flutter/material.dart';
import 'package:lanars_test_task/presentation/core/colors.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';
import 'package:lanars_test_task/presentation/widgets/scroll/color_scroll_behavior.dart';
import 'package:lanars_test_task/presentation/widgets/scroll/empty_scroll_behavior.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class RefreshWrapper extends StatelessWidget {
  final Widget child;
  final RefreshController controller;
  final void Function()? onRefresh;

  const RefreshWrapper({
    super.key,
    required this.controller,
    required this.child,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: EmptyScrollBehavior(),
      child: SmartRefresher(
        header: const MaterialClassicHeader(
          color: AppColors.primary,
        ),
        controller: controller,
        onRefresh: onRefresh,
        child: ScrollConfiguration(
          behavior: ColorScrollBehavior(
            overscrollColor: context.appTheme.colorScheme.secondary,
          ),
          child: child,
        ),
      ),
    );
  }
}
