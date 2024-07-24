import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lanars_test_task/presentation/core/colors.dart';
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';
import 'package:lanars_test_task/presentation/widgets/cards/base_card.dart';

class PostItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String image;
  final EdgeInsets padding;
  final VoidCallback? onPressed;

  const PostItem({
    super.key,
    required this.title,
    required this.image,
    this.subtitle,
    this.padding = const EdgeInsets.only(left: (largeSpace * 3)),
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: BaseCard(
        onPressed: onPressed,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.lightOutline,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(appBorderRadius),
            ),
          ),
          padding: EdgeInsets.all(doubleLightSpace.sp),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 56.h,
                  width: 56.w,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(appBorderRadius),
                    ),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: doubleLightSpace.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: context.appTextTheme.h5.paint(AppColors.surface),
                      ),
                      if (subtitle != null)
                        Text(
                          subtitle!,
                          style: context.appTextTheme.h6
                              .paint(AppColors.textFieldTextColor),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
