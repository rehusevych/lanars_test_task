import 'package:flutter/material.dart';
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';

class BaseCard extends StatelessWidget {
  final Widget? child;
  final BorderRadiusGeometry borderRadius;
  final Color? backgroundColor;
  final ShapeBorder? shape;
  final VoidCallback? onPressed;

  const BaseCard({
    super.key,
    this.child,
    this.backgroundColor,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(appBorderRadius),
    ),
    this.shape,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: shape == null ? borderRadius : null,
      clipBehavior: shape == null ? Clip.hardEdge : Clip.none,
      shape: shape,
      child: InkWell(
        onTap: onPressed,
        child: child,
      ),
    );
  }
}
