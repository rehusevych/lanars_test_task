part of 'theme.dart';

double _buttonTextSize = 17.0.sp;

class AppThemeData {
  final Color primaryColor;
  final Color backgroundColor;
  final Color cardColor;
  final Color errorColor;
  final Color successColor;
  final AppTextTheme textTheme;
  final ColorScheme colorScheme;
  final AppButtonTheme primaryButtonTheme;
  final AppButtonTheme secondaryButtonTheme;
  final double bottomNavBarHeight;

  AppTextTheme get primaryTextTheme => textTheme;

  factory AppThemeData({
    Color? primaryColor,
    Color? backgroundColor,
    Color? cardColor,
    Color? errorColor,
    Color? successColor,
    AppTextTheme? textTheme,
    ColorScheme? colorScheme,
    AppButtonTheme? primaryButtonTheme,
    AppButtonTheme? secondaryButtonTheme,
    double? bottomNavBarHeight,
  }) {
    primaryColor ??= AppColors.primary;
    cardColor ??= primaryColor;
    backgroundColor ??= Colors.white;
    textTheme ??= AppTextTheme.main(Colors.black);
    errorColor ??= AppColors.error;
    successColor ??= AppColors.success;
    bottomNavBarHeight ??= defaultNavBarHeight;

    colorScheme ??= const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF0061A6),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFD2E4FF),
      onPrimaryContainer: Color(0xFF001C37),
      secondary: Color(0xFF535F70),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFD7E3F8),
      onSecondaryContainer: Color(0xFF101C2B),
      tertiary: Color(0xFF6B5778),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFF3DAFF),
      onTertiaryContainer: Color(0xFF251431),
      error: Color(0xFFBA1A1A),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFFFDAD6),
      onErrorContainer: Color(0xFF410002),
      outline: Color(0xFF73777F),
      surface: Color(0xFFFAF9FC),
      onSurface: Color(0xFF1A1C1E),
      surfaceContainerHighest: Color(0xFFDFE2EB),
      onSurfaceVariant: Color(0xFF43474E),
      inverseSurface: Color(0xFF2F3033),
      onInverseSurface: Color(0xFFF1F0F4),
      inversePrimary: Color(0xFFA0CAFF),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF0061A6),
      outlineVariant: Color(0xFFC3C6CF),
      scrim: Color(0xFF000000),
    );

    primaryButtonTheme ??= AppButtonTheme(
      elevatedButtonStyle: AppButtonTheme.elevatedButton(
        textTheme.h4.copyWith(
          color: colorScheme.onSecondary,
          fontSize: _buttonTextSize,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        colorScheme.primary,
        AppColors.primary,
      ),
      outlinedButtonStyle: AppButtonTheme.outlinedButton(
        textTheme.h4.copyWith(
          color: colorScheme.onSecondary,
          fontSize: _buttonTextSize,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        colorScheme.primary,
      ),
      textButtonStyle: AppButtonTheme.textButton(
        textTheme.h4.copyWith(
          color: colorScheme.onSecondary,
          fontSize: _buttonTextSize,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        colorScheme.primary,
      ),
    );

    secondaryButtonTheme ??= AppButtonTheme(
      elevatedButtonStyle: AppButtonTheme.elevatedButton(
        textTheme.h4.copyWith(
          color: colorScheme.onSecondary,
          fontSize: _buttonTextSize,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        colorScheme.onSecondary,
        colorScheme.primary,
      ),
      outlinedButtonStyle: AppButtonTheme.outlinedButton(
        textTheme.h4.copyWith(
          color: colorScheme.onSecondary,
          fontSize: _buttonTextSize,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        colorScheme.onSecondary,
      ),
      textButtonStyle: AppButtonTheme.textButton(
        textTheme.h4.copyWith(
          color: colorScheme.onSecondary,
          fontSize: _buttonTextSize,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        colorScheme.onSecondary,
      ),
    );

    return AppThemeData.raw(
      textTheme: textTheme,
      backgroundColor: backgroundColor,
      cardColor: cardColor,
      errorColor: errorColor,
      successColor: successColor,
      primaryColor: primaryColor,
      colorScheme: colorScheme,
      primaryButtonTheme: primaryButtonTheme,
      secondaryButtonTheme: secondaryButtonTheme,
      bottomNavBarHeight: bottomNavBarHeight,
    );
  }

  const AppThemeData.raw({
    required this.primaryColor,
    required this.backgroundColor,
    required this.cardColor,
    required this.errorColor,
    required this.successColor,
    required this.textTheme,
    required this.colorScheme,
    required this.primaryButtonTheme,
    required this.secondaryButtonTheme,
    required this.bottomNavBarHeight,
  });
}

extension AppThemeDataExtension on AppThemeData {
  ThemeData toMaterial() => ThemeData(
        primaryColor: primaryColor,
        textTheme: textTheme.toMaterial(),
        primaryTextTheme: primaryTextTheme.toMaterial(),
        bottomAppBarTheme: const BottomAppBarTheme(
          elevation: defaultBottomBarElevation,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: primaryButtonTheme.elevatedButtonStyle,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: primaryButtonTheme.outlinedButtonStyle,
        ),
        textButtonTheme: TextButtonThemeData(
          style: primaryButtonTheme.textButtonStyle,
        ),
        dividerTheme: const DividerThemeData(
          thickness: 1,
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.blue,
          selectionColor: Colors.blue.withOpacity(0.5),
          selectionHandleColor: Colors.blue.withOpacity(0.5),
        ),
        colorScheme: colorScheme.copyWith(surface: backgroundColor),
      );
}
