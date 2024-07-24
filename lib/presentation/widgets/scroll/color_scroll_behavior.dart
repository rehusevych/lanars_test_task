import 'package:flutter/material.dart';

/// Used with ScrollConfiguration for setting android overscroll animation color
class ColorScrollBehavior extends ScrollBehavior {
  final Color overscrollColor;

  const ColorScrollBehavior({
    Key? key,
    required this.overscrollColor,
  });

  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return child;
      case TargetPlatform.windows:
      case TargetPlatform.linux:
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      default:
        return GlowingOverscrollIndicator(
          axisDirection: details.direction,
          color: overscrollColor,
          child: child,
        );
    }
  }
}
