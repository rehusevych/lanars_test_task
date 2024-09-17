import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([super.locale = 'en']);

  @override
  String get lanars => 'Lanars';

  @override
  String get signIn => 'Sign in';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get enterYouEmail => 'Enter your email';

  @override
  String get enterYouPassword => 'Enter your password';

  @override
  String get login => 'Log in';

  @override
  String get logout => 'Log out';

  @override
  String get listPage => 'List page';

  @override
  String get profile => 'Profile';

  @override
  String get cancel => 'Cancel';

  @override
  String get noPosts => 'No posts';

  @override
  String get noItemFound => 'No item found';

  @override
  String get areYouSureYouWantToLogout => 'Are you sure you want to logout?';

  @override
  String get thereAreCurrentlyNoPosts => 'There are currently no posts available';

  @override
  String get emailIsRequired => 'Email is required';

  @override
  String get emailIsIncorrect => 'Email is incorrect';

  @override
  String get emailMustBeBetween => 'Email must be between 6 and 30 characters';

  @override
  String get passwordIsRequired => 'Password is required';

  @override
  String get passwordMustIncludeUppercase =>
      'Password must include uppercase, lowercase letters and a digit';

  @override
  String get passwordMustBeBetween => 'Password must be between 6 and 10 characters';

  @override
  String get serverError => 'Server error. Please, try again!';
}
