import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';
import 'package:lanars_test_task/presentation/core/colors.dart';
import 'package:intl/intl.dart' as intl;
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';
import 'package:photo_view/photo_view.dart';

const double _iconSize = 20.0;
const double _buttonSize = 52.0;

typedef Predicate<T> = bool Function(T item);

class Predicates {
  Predicates._();

  static Predicate<T> notNull<T>() => (T t) => t != null;
}

T? safeCast<T>(obj) => obj is T ? obj : null;

VoidCallback notImplementedTap(
  BuildContext context, {
  ScaffoldMessengerState Function(BuildContext context)? getScaffold,
}) {
  return () {
    if (!kDebugMode) return;
    getScaffold ??= ScaffoldMessenger.of;

    getScaffold?.call(context)
      ?..removeCurrentSnackBar()
      ..showSnackBar(const SnackBar(content: Text('Not implemented')));
  };
}

void unFocus() {
  FocusManager.instance.primaryFocus?.unfocus();
}

void showErrorSnackBar(
  BuildContext context,
  String message, {
  Duration duration = const Duration(seconds: 2),
}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      showCloseIcon: true,
      margin: EdgeInsets.only(
        bottom: largeSpace.h,
        left: largeSpace.w,
        right: largeSpace.w,
      ),
      behavior: SnackBarBehavior.floating,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(appBorderRadius),
        ),
      ),
      closeIconColor: AppColors.snackBarError,
      content: Text(
        message,
        style: context.appTextTheme.h6.paint(AppColors.snackBarError),
      ),
      duration: duration,
      backgroundColor: AppColors.inverseSurface,
    ),
  );
}

void showSuccessSnackBar(
  BuildContext context,
  String message, {
  Duration duration = const Duration(seconds: 2),
}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      duration: duration,
      backgroundColor: AppColors.success,
    ),
  );
}

String defaultFailureToString(BuildContext context, Failure failure) {
  return failure.maybeWhen(
    unexpected: (e, s) => unexpectedResponseText(
      text: "Unexpected Error",
      e: e,
    ),
    statusCode: (code, e, s) => unexpectedResponseText(
      text: "Something went wrong on the server side",
      e: e,
    ),
    network: () => "No internet connection",
    orElse: () => "Unexpected Error",
  );
}

String unexpectedResponseText({
  required String text,
  Object? e,
}) {
  if (kDebugMode) return e != null ? e.toString() : '$text ${e.toString()}';
  return text;
}

double calculateTextWidth(
  TextStyle style, {
  required String text,
  TextDirection textDirection = TextDirection.ltr,
  int maxLines = 1,
  double textScaleFactor = 1.0,
  double minWidth = 0.0,
  double maxWidth = double.infinity,
  TextWidthBasis textWidthBasis = TextWidthBasis.longestLine,
}) =>
    calculateTextSize(
      style,
      text: text,
      textDirection: textDirection,
      maxLines: maxLines,
      textScaleFactor: textScaleFactor,
      minWidth: minWidth,
      maxWidth: maxWidth,
      textWidthBasis: textWidthBasis,
    ).width;

double calculateTextHeight(
  TextStyle style, {
  String text = 'M',
  TextDirection textDirection = TextDirection.ltr,
  int maxLines = 1,
  double textScaleFactor = 1.0,
  double minWidth = 0.0,
  double maxWidth = double.infinity,
  TextWidthBasis textWidthBasis = TextWidthBasis.longestLine,
}) =>
    calculateTextSize(
      style,
      text: text,
      textDirection: textDirection,
      maxLines: maxLines,
      textScaleFactor: textScaleFactor,
      minWidth: minWidth,
      maxWidth: maxWidth,
      textWidthBasis: textWidthBasis,
    ).height;

Size calculateTextSize(
  TextStyle style, {
  String text = 'M',
  TextDirection textDirection = TextDirection.ltr,
  int maxLines = 1,
  double textScaleFactor = 1.0,
  double minWidth = 0.0,
  double maxWidth = double.infinity,
  TextWidthBasis textWidthBasis = TextWidthBasis.longestLine,
}) {
  final TextPainter textPainter = TextPainter(
    text: TextSpan(text: text, style: style),
    maxLines: maxLines,
    textScaler: TextScaler.linear(textScaleFactor),
    textDirection: textDirection,
  )..layout(minWidth: minWidth, maxWidth: maxWidth);

  return textPainter.size;
}

String formatPrice(double price) {
  final formatter = intl.NumberFormat("#,##0.00", "en_US");
  return formatter.format(price);
}

double calculateDiscount(double price, double discount) {
  return price - (price / 100 * discount);
}

void openPhotoFullSize(
  BuildContext context, {
  required String path,
}) {
  final provider =
      Uri.parse(path).isAbsolute ? NetworkImage(path) : FileImage(File(path));
  final imageProvider = provider as ImageProvider<Object>?;

  showDialog(
    context: context,
    useSafeArea: false,
    builder: (dialogContext) {
      return Scaffold(
        body: Stack(
          children: [
            PhotoView(imageProvider: imageProvider),
            _buildCloseButton(dialogContext),
          ],
        ),
      );
    },
  );
}

Widget _buildCloseButton(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).padding.top + largeSpace,
    right: largeSpace,
    child: Container(
      height: _buttonSize,
      width: _buttonSize,
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(appBorderRadius),
      ),
      child: IconButton(
        icon: const Icon(
          Icons.close,
          color: AppColors.surface,
          size: _iconSize,
        ),
        onPressed: () {
          context.router.pop();
        },
      ),
    ),
  );
}
