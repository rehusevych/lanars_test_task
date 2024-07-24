import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';

const double _loadingIconSize = 80.0;

class AppSpinKit extends StatelessWidget {
  final Color? color;

  const AppSpinKit({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SpinKitFadingFour(
      size: _loadingIconSize,
      color: color ?? context.appTheme.colorScheme.secondary,
    );
  }
}
