import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lanars_test_task/extensions/l10n.dart';
import 'package:lanars_test_task/presentation/core/colors.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';

Future<void> showLogoutDialog(
  BuildContext context, {
  required VoidCallback onPressed,
}) async {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        context.s.logout,
        style: context.appTextTheme.h3,
      ),
      backgroundColor: AppColors.background,
      content: Text(
        context.s.areYouSureYouWantToLogout,
        style: context.appTextTheme.h6,
      ),
      actions: [
        TextButton(
          onPressed: () => context.router.maybePop(),
          child: Text(
            context.s.cancel,
            style: context.appTextTheme.h6.paint(AppColors.secondary).copyWith(
                  letterSpacing: 0.8,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            context.s.logout,
            style: context.appTextTheme.h6.paint(AppColors.primary).copyWith(
                  letterSpacing: 0.8,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ],
    ),
  );
}
