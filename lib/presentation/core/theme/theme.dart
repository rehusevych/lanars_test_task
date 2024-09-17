import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:lanars_test_task/presentation/core/colors.dart';
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';

part 'button_theme.dart';
part 'text_theme.dart';
part 'theme_data.dart';

class AppTheme extends StatelessWidget {
  final AppThemeData data;
  final Widget? child;

  const AppTheme({
    super.key,
    required this.data,
    required this.child,
  });

  static AppThemeData of(BuildContext context) {
    final inheritedTheme = context.dependOnInheritedWidgetOfExactType<_InheritedAppTheme>();
    return inheritedTheme!.theme.data;
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedAppTheme(
      theme: this,
      child: Theme(
        data: data.toMaterial(),
        child: child ?? Container(),
      ),
    );
  }
}

class _InheritedAppTheme extends InheritedWidget {
  const _InheritedAppTheme({
    required this.theme,
    required super.child,
  });

  final AppTheme theme;

  @override
  bool updateShouldNotify(covariant _InheritedAppTheme old) => theme.data != old.theme.data;
}

extension ThemeContextEx on BuildContext {
  ThemeData get theme => Theme.of(this);

  AppThemeData get appTheme => AppTheme.of(this);
}
