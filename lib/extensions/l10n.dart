import 'package:flutter/cupertino.dart';
import 'package:lanars_test_task/generated/app_localizations.dart';

extension LocalisationExtension on BuildContext {
  AppLocalizations get s => AppLocalizations.of(this);
}
