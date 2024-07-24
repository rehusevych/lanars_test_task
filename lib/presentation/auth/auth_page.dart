import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lanars_test_task/bloc/auth/cubit.dart';
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

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (c) => AuthCubit(
        userRepository: c.read(),
      ),
      child: const _AuthPageWithBloc(),
    );
  }
}

class _AuthPageWithBloc extends StatefulWidget {
  const _AuthPageWithBloc({super.key});

  @override
  State<_AuthPageWithBloc> createState() => _AuthPageWithBlocState();
}

class _AuthPageWithBlocState extends State<_AuthPageWithBloc> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: unFocus,
      child: PageBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: doubleLightSpace.w),
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: _authBlocListener,
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  _buildTitle(context, context.s.signIn),
                  const Spacer(),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        ..._buildTextFields(context, state),
                      ],
                    ),
                  ),
                  const Spacer(),
                  state.maybeWhen(
                    orElse: () => _buildLoginButton(context),
                    loading: () =>
                        _buildLoginButton(context, loading: _buildLoading()),
                  ),
                  const Spacer(flex: 4),
                ],
              );
            },
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

  List<Widget> _buildTextFields(BuildContext context, AuthState state) {
    return [
      AppTextField(
        labelText: context.s.email,
        hintText: context.s.enterYouEmail,
        controller: _emailController,
        validate: _validateForm,
        validator: (text) => validateEmail(context, text),
        isEnabled: state.maybeWhen(
          orElse: () => true,
          loading: () => false,
        ),
      ),
      SizedBox(
        height: (largeSpace * 3).h,
      ),
      AppTextField(
        labelText: context.s.password,
        hintText: context.s.enterYouPassword,
        controller: _passwordController,
        isPassword: true,
        validate: _validateForm,
        validator: (text) => validatePassword(context, text),
        isEnabled: state.maybeWhen(
          orElse: () => true,
          loading: () => false,
        ),
      ),
    ];
  }

  Widget _buildLoginButton(
    BuildContext context, {
    Widget? loading,
  }) {
    return AppButton(
      text: context.s.login,
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          context.read<AuthCubit>().login(
                email: _emailController.text,
                password: _passwordController.text,
              );
        }
      },
      borderColor: AppColors.primary,
      textColor: Colors.white,
      buttonColor: AppColors.primary,
      loadingWidget: loading,
    );
  }

  Widget _buildLoading() {
    return SizedBox(
      height: _loadingButtonSize.h,
      width: _loadingButtonSize.w,
      child: const CircularProgressIndicator(
        strokeWidth: 3,
        color: Colors.white,
      ),
    );
  }

  void _authBlocListener(
    BuildContext context,
    AuthState state,
  ) {
    state.mapOrNull(
      failed: (f) => showErrorSnackBar(
        context,
        context.s.serverError,
      ),
      signInSuccess: (user) => context.replaceRoute(
        const AuthenticatedWrapperRouter(),
      ),
    );
  }

  void _validateForm() {
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      _formKey.currentState!.validate();
    }
  }
}
