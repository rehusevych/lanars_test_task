part of 'theme.dart';

class AppButtonTheme {
  final ButtonStyle elevatedButtonStyle;
  final ButtonStyle outlinedButtonStyle;
  final ButtonStyle textButtonStyle;

  AppButtonTheme({
    required this.elevatedButtonStyle,
    required this.outlinedButtonStyle,
    required this.textButtonStyle,
  });

  static double borderRadius = 100.0;
  static double textHeight = 1.4;
  static double borderWidth = 1.0;
  static double letterSpacing = 2.0;

  static ButtonStyle elevatedButton(
    TextStyle textStyle,
    Color textColor,
    Color backgroundColor,
  ) {
    return ButtonStyle(
      shape: _defaultButtonShape(),
      textStyle: WidgetStateProperty.all<TextStyle>(
        textStyle.copyWith(
          height: textHeight,
          letterSpacing: letterSpacing,
        ),
      ),
      foregroundColor: WidgetStateProperty.resolveWith<Color>(
        (states) => _getColor(states, textColor),
      ),
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (states) => _getColor(states, backgroundColor),
      ),
    );
  }

  static ButtonStyle outlinedButton(TextStyle textStyle, Color color) => ButtonStyle(
        shape: _defaultButtonShape(),
        side: WidgetStateProperty.resolveWith<BorderSide>(
          (states) => BorderSide(
            color: _getColor(states, color),
            width: borderWidth,
          ),
        ),
        textStyle: WidgetStateProperty.all<TextStyle>(
          textStyle.copyWith(
            height: textHeight,
            letterSpacing: letterSpacing,
          ),
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (states) => _getColor(states, color),
        ),
      );

  static Color _getColor(Set<WidgetState> states, Color color) {
    if (states.contains(WidgetState.pressed)) {
      return color;
    } else if (states.contains(WidgetState.disabled)) {
      return color.withOpacity(0.5);
    }
    return color;
  }

  static ButtonStyle textButton(TextStyle textStyle, Color color) => ButtonStyle(
        shape: _defaultButtonShape(),
        textStyle: WidgetStateProperty.all<TextStyle>(
          textStyle.copyWith(
            height: textHeight,
            letterSpacing: letterSpacing,
          ),
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (states) => _getColor(states, color),
        ),
      );

  static WidgetStateProperty<OutlinedBorder> _defaultButtonShape() =>
      WidgetStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      );

  AppButtonTheme copyWith({
    ButtonStyle? elevatedButtonStyle,
    ButtonStyle? outlinedButtonStyle,
    ButtonStyle? textButtonStyle,
  }) {
    return AppButtonTheme(
      elevatedButtonStyle: elevatedButtonStyle ?? this.elevatedButtonStyle,
      outlinedButtonStyle: outlinedButtonStyle ?? this.outlinedButtonStyle,
      textButtonStyle: textButtonStyle ?? this.textButtonStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppButtonTheme &&
        other.elevatedButtonStyle == elevatedButtonStyle &&
        other.outlinedButtonStyle == outlinedButtonStyle &&
        other.textButtonStyle == textButtonStyle;
  }

  @override
  int get hashCode =>
      elevatedButtonStyle.hashCode ^ outlinedButtonStyle.hashCode ^ textButtonStyle.hashCode;
}

extension AppButtonThemeContextEx on BuildContext {
  AppButtonTheme get appButtonTheme => appTheme.primaryButtonTheme;

  AppButtonTheme get appSecondaryButtonTheme => appTheme.secondaryButtonTheme;
}
