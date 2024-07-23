import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lanars_test_task/presentation/core/colors.dart';
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? loadingWidget;
  final Color textColor;
  final double widthPadding;
  final double textSize;
  final EdgeInsets? padding;
  final Color borderColor;
  final Color buttonColor;
  final VoidCallback? onPressed;
  final bool isFullWidth;
  final bool isSplashVisible;

  const AppButton({
    super.key,
    required this.text,
    this.suffixIcon,
    this.prefixIcon,
    this.onPressed,
    required this.textColor,
    this.borderColor = AppColors.primary,
    required this.buttonColor,
    this.widthPadding = doubleLightSpace,
    this.textSize = 14,
    this.padding,
    this.isSplashVisible = true,
    this.isFullWidth = true,
    this.loadingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(buttonBorderRadius),
      color: buttonColor,
      child: InkWell(
        splashColor: isSplashVisible
            ? AppColors.primary.withOpacity(0.5)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(buttonBorderRadius),
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: (largeSpace * 2.5).w,
            vertical: largeSpace.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(buttonBorderRadius),
            border: Border.all(color: borderColor, width: 1.1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: isFullWidth ? MainAxisSize.max : MainAxisSize.min,
            children: [
              if (prefixIcon != null) ...[
                prefixIcon!,
                SizedBox(width: lightSpace.w),
              ],
              loadingWidget != null
                  ? loadingWidget!
                  : Text(
                      text,
                      style: context.appTextTheme.h6
                          .paint(textColor)
                          .size(textSize.sp)
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
              if (suffixIcon != null) ...[
                SizedBox(width: widthPadding.w),
                suffixIcon!,
              ]
            ],
          ),
        ),
      ),
    );
  }
}
