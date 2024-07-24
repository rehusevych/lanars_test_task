import 'package:flutter/material.dart';

/// Used with ScrollConfiguration for removing android overscroll animation
class EmptyScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
