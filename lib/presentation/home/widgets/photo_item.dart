import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lanars_test_task/gen/assets.gen.dart';
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';

const double _avatarSize = 56.0;

class PhotoItem extends StatelessWidget {
  final String url;
  const PhotoItem({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(appBorderRadius),
      ),
      child: CachedNetworkImage(
        imageUrl: url,
        width: _avatarSize.w,
        height: _avatarSize.h,
        fit: BoxFit.cover,
        placeholder: (context, url) => Assets.images.imagePlaceholder.image(),
        errorWidget: (context, url, error) =>
            Assets.images.imagePlaceholder.image(),
      ),
    );
  }
}
