import 'package:flutter/material.dart';
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';

class EmptyPage extends StatelessWidget {
  final Widget icon;
  final String? title;
  final String? info;
  final Widget? footer;

  const EmptyPage({
    super.key,
    required this.icon,
    this.title,
    this.info,
    this.footer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: doubleLargeSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          if (title != null) ...[
            const SizedBox(height: largeSpace * 3),
            Text(
              title!,
              style: context.appTextTheme.caption.size(40),
            ),
          ],
          if (info != null) ...[
            const SizedBox(height: largeSpace),
            Text(
              info!,
              style: context.appTextTheme.h6.copyWith(height: 1.2),
            ),
          ],
          const SizedBox(height: doubleLargeSpace),
          if (footer != null) footer!,
        ],
      ),
    );
  }
}
