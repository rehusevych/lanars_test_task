import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lanars_test_task/extensions/l10n.dart';
import 'package:lanars_test_task/presentation/core/colors.dart';
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';
import 'package:lanars_test_task/presentation/core/util/util.dart';
import 'package:lanars_test_task/presentation/widgets/background/page_background.dart';
import 'package:lanars_test_task/presentation/widgets/buttons/app_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _AuthPageState();
}

class _AuthPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: unFocus,
      child: PageBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: doubleLightSpace.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              _buildTitle(context, context.s.signIn),
              const Spacer(),
              AppButton(
                text: context.s.login,
                onPressed: () {},
                borderColor: AppColors.primary,
                textColor: Colors.white,
                buttonColor: AppColors.primary,
                //  loadingWidget: _buildLoadingButton(),
              ),
              const Spacer(flex: 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context, String title) {
    return Center(
      child: Text(
        title,
        style: context.appTextTheme.h2.copyWith().paint(AppColors.surface),
      ),
    );
  }
}
