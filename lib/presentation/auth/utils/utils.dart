import 'package:flutter/material.dart';
import 'package:lanars_test_task/extensions/l10n.dart';

String? validateEmail(
  BuildContext context,
  String? value,
) {
  if (value == null || value.isEmpty) {
    return context.s.emailIsRequired;
  } else if (value.length < 6 || value.length > 30) {
    return context.s.emailMustBeBetween;
  } else {
    final emailRegex = RegExp(
        r"^[a-zA-Z0-9.!#$%&\'*+\\/=?^_`{|}~-]{1,10}@(?:(?!.*--)[a-zA-Z0-9-]{1,10}(?<!-))(?:\.(?:[a-zA-Z0-9-]{2,10}))+");
    if (!emailRegex.hasMatch(value)) {
      return context.s.emailIsIncorrect;
    }
  }
  return null;
}

String? validatePassword(
  BuildContext context,
  String? value,
) {
  if (value == null || value.isEmpty) {
    return context.s.passwordIsRequired;
  } else if (value.length < 6 || value.length > 10) {
    return context.s.passwordMustBeBetween;
  } else {
    final hasUppercase = value.contains(RegExp(r'[A-Z]'));
    final hasLowercase = value.contains(RegExp(r'[a-z]'));
    final hasDigit = value.contains(RegExp(r'\d'));
    if (!hasUppercase || !hasLowercase || !hasDigit) {
      return context.s.passwordMustIncludeUppercase;
    }
  }
  return null;
}
