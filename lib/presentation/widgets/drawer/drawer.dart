import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lanars_test_task/auth_navigation.dart';
import 'package:lanars_test_task/data/user/model/user.dart';
import 'package:lanars_test_task/extensions/l10n.dart';
import 'package:lanars_test_task/gen/assets.gen.dart';
import 'package:lanars_test_task/presentation/core/colors.dart';
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';
import 'package:lanars_test_task/presentation/core/util/util.dart';
import 'package:lanars_test_task/presentation/router/router.gr.dart';
import 'package:lanars_test_task/presentation/widgets/cards/base_card.dart';
import 'package:lanars_test_task/presentation/widgets/drawer/widgets/logout_dialog.dart';

const double _avatarSize = 56.0;
const double _iconSize = 25.0;

Drawer buildDrawer(
  BuildContext context, {
  UserData? data,
}) {
  return Drawer(
    backgroundColor: AppColors.background,
    width: MediaQuery.of(context).size.width * 0.7,
    child: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: (doubleLightSpace).w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(context),
            SizedBox(height: doubleMediumSpace.h),
            _buildUserInfo(context, data),
            const Spacer(),
            _buildRealmDatabaseButton(context),
            SizedBox(height: doubleLargeSpace.h),
            _buildLogoutButton(context),
          ],
        ),
      ),
    ),
  );
}

Widget _buildTitle(BuildContext context) {
  return Text(
    context.s.profile,
    style: context.appTextTheme.h6.copyWith(fontWeight: FontWeight.w500),
  );
}

Widget _buildUserInfo(BuildContext context, UserData? data) {
  return BaseCard(
    backgroundColor: Colors.transparent,
    onPressed: () => openPhotoFullSize(context, path: data?.picture?.large ?? ''),
    child: Row(
      children: [
        _buildUserAvatar(data?.picture?.medium ?? ""),
        SizedBox(width: doubleLightSpace.w),
        _buildInfo(
          context,
          "${data?.name.first ?? ''} ${data?.name.last ?? ''}",
          data?.email ?? "",
        ),
      ],
    ),
  );
}

Widget _buildInfo(
  BuildContext context,
  String name,
  String email,
) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: context.appTextTheme.h5.paint(AppColors.surface),
        ),
        Text(
          email,
          style: context.appTextTheme.h6.paint(AppColors.surface).size(12.sp),
        ),
      ],
    ),
  );
}

Widget _buildUserAvatar(String path) {
  return ClipOval(
    child: CachedNetworkImage(
      imageUrl: path,
      width: _avatarSize.w,
      height: _avatarSize.h,
      fit: BoxFit.cover,
      placeholder: (context, url) => Assets.images.placeholder.image(),
      errorWidget: (context, url, error) => Assets.images.placeholder.image(),
    ),
  );
}

Widget _buildRealmDatabaseButton(BuildContext context) {
  return IconButton(
    onPressed: () {
      Navigator.of(context).pop();
      context.router.push(const PostsRealmRoute());
    },
    icon: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.data_object_sharp,
          size: _iconSize.sp,
        ),
        SizedBox(width: lightSpace.w),
        Text(
          "Realm Database",
          style: context.appTextTheme.h6.paint(AppColors.surface),
        ),
      ],
    ),
  );
}

Widget _buildLogoutButton(BuildContext context) {
  return IconButton(
    onPressed: () {
      showLogoutDialog(
        context,
        onPressed: () => logout(context),
      );
    },
    icon: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.login_rounded,
          size: _iconSize.sp,
        ),
        SizedBox(width: lightSpace.w),
        Text(
          context.s.logout,
          style: context.appTextTheme.h6.paint(AppColors.surface),
        ),
      ],
    ),
  );
}
