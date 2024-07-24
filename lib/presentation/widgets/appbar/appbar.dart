import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lanars_test_task/presentation/core/colors.dart';
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';
import 'package:lanars_test_task/presentation/core/util/util.dart';

// ignore: unused_element
const double _brandLogoMaxSize = 80;
const double _titleMaxTopPadding = mediumSpace * 3;
const double _titleBackMaxTopPadding = kToolbarHeight;
const double _titleMaxLeftPadding =
    _avatarSizeCollapsed + largeSpace + (_moodButtonSize / 2);
const double _avatarSizeCollapsed = 45.0;
const double _moodButtonSize = 28.0;

const TextStyle _titleTextStyle32 = TextStyle(
  fontSize: 32,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
  height: 1.6,
);

const TextStyle _titleTextStyle40 = TextStyle(
  fontSize: 40,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
  height: 1.6,
);

const double _elevation = 4.0;

typedef TrailingBuilder = Widget Function(BuildContext context, double offset);

enum TitleStyle {
  regular(_titleTextStyle32),
  large(_titleTextStyle40);

  const TitleStyle(this.style);

  final TextStyle style;
}

class CollapsedHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Color backgroundColor;
  final String title;
  final TitleStyle titleStyle;
  final double titleAlign;
  final int titleLines;
  final double topPadding;
  final double footerHeight;
  final Widget? footer;
  final TrailingBuilder? leadingBuilder;
  final TrailingBuilder? titleTrailingBuilder;
  final TrailingBuilder? trailingBuilder;
  final CrossAxisAlignment? crossAxisAlignment;
  final VoidCallback? onBackPress;

  const CollapsedHeaderDelegate({
    required this.title,
    required this.topPadding,
    this.titleStyle = TitleStyle.regular,
    this.titleAlign = 1.6,
    this.titleLines = 1,
    this.backgroundColor = AppColors.primary,
    this.footerHeight = 0,
    this.footer,
    this.leadingBuilder,
    this.titleTrailingBuilder,
    this.trailingBuilder,
    this.crossAxisAlignment,
    this.onBackPress,
  });

  @override
  double get minExtent =>
      topPadding +
      kToolbarHeight +
      (footer != null ? footerHeight + mediumSpace : 0);

  @override
  double get maxExtent =>
      topPadding +
      (onBackPress != null ? _titleBackMaxTopPadding : _titleMaxTopPadding) +
      calculateTextHeight(titleStyle.style) * titleLines +
      lightSpace +
      footerHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final offset = _calculateOffset(shrinkOffset);

    return SizedBox.expand(
      child: Material(
        animationDuration: Duration.zero,
        shadowColor: _shadowColor(shrinkOffset),
        elevation: _elevation,
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.only(
            top: topPadding,
          ),
          child: Stack(
            children: [
              if (onBackPress != null)
                Padding(
                  padding: const EdgeInsets.only(
                    left: lightSpace,
                  ),
                  child: SizedBox.square(
                    dimension: kToolbarHeight,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.black,
                      onPressed: onBackPress,
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: doubleLightSpace.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        left: onBackPress != null
                            ? _resizedTitleLeftPadding(context, offset)
                            : 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment:
                            crossAxisAlignment ?? CrossAxisAlignment.start,
                        children: [
                          if (leadingBuilder != null) ...[
                            leadingBuilder!(context, offset),
                            Spacer(),
                          ],
                          Text(
                            title,
                            style: context.appTextTheme.h2
                                .paint(AppColors.surface),
                          ),
                          if (titleTrailingBuilder != null) ...[
                            const SizedBox(width: lightSpace),
                            titleTrailingBuilder!(context, offset),
                          ],
                          if (trailingBuilder != null) ...[
                            const Spacer(),
                            trailingBuilder!(context, offset),
                          ],
                        ],
                      ),
                    ),
                    if (footer != null) ...[
                      footer!,
                      const SizedBox(height: mediumSpace),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _calculateOffset(double shrinkOffset) {
    final deltaExtend = maxExtent - minExtent;
    return shrinkOffset < deltaExtend ? shrinkOffset / deltaExtend : 1.0;
  }

  double _resizedTitleLeftPadding(BuildContext context, double offset) =>
      lerpDouble(0, _titleMaxLeftPadding, offset) ?? 0;

  Color? _shadowColor(double offset) => Color.lerp(
        Colors.white.withOpacity(0),
        Colors.white.withOpacity(0.1),
        offset / (lightSpace * 3),
      );

  @override
  bool shouldRebuild(CollapsedHeaderDelegate oldDelegate) => true;
}
