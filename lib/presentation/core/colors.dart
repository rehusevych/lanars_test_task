import 'package:flutter/material.dart';

class AppColorSwatch extends ColorSwatch<int> {
  const AppColorSwatch(super.primary, super.swatch);

  Color get shade100 => this[100]!;

  Color get shade200 => this[200]!;

  Color get shade300 => this[300]!;

  Color get shade400 => this[400]!;
}

class ExtendedAppColorSwatch extends AppColorSwatch {
  const ExtendedAppColorSwatch(super.primary, super.swatch);

  Color get shade500 => this[500]!;
}

class AppColors {
  const AppColors._();

  static const Color primary = Color(0xFF0061A6);
  static const Color secondary = Color(0xFF535F70);
  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFF1A1C1E);
  static const Color snackBarError = Color(0xFFF5EFF7);
  static const Color inverseSurface = Color(0xFF2F3033);
  static const Color textFieldBorder = Color(0xFF73777F);
  static const Color lightOutline = Color(0xFFC3C6CF);
  static const Color textFieldTextColor = Color(0xFF43474E);
  static const Color error = Color(0xFFF44336);
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFF57C00);
}
