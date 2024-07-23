import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lanars_test_task/extensions/l10n.dart';
import 'package:lanars_test_task/presentation/auth/utils/utils.dart';
import 'package:lanars_test_task/presentation/core/colors.dart';
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';
import 'package:lanars_test_task/presentation/core/util/util.dart';
import 'package:lanars_test_task/presentation/router/router.gr.dart';
import 'package:lanars_test_task/presentation/widgets/background/page_background.dart';
import 'package:lanars_test_task/presentation/widgets/buttons/app_button.dart';
import 'package:lanars_test_task/presentation/widgets/text_field/app_text_field.dart';

const double _loadingButtonSize = 20.0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _AuthPageState();
}

class _AuthPageState extends State<HomePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey _formKey = GlobalKey();

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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    ..._buildTextFields(context),
                  ],
                ),
              ),
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

  List<Widget> _buildTextFields(BuildContext context) {
    return [];
  }

  Widget _buildLoadingButton() {
    return SizedBox(
      height: _loadingButtonSize.h,
      width: _loadingButtonSize.w,
      child: const CircularProgressIndicator(
        strokeWidth: 3,
        color: Colors.white,
      ),
    );
  }
}
