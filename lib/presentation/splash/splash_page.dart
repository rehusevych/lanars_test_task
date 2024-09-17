import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lanars_test_task/bloc/splash/cubit.dart';
import 'package:lanars_test_task/data/core/model/failure/failure.dart';
import 'package:lanars_test_task/extensions/l10n.dart';
import 'package:lanars_test_task/gen/assets.gen.dart';
import 'package:lanars_test_task/presentation/core/colors.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';
import 'package:lanars_test_task/presentation/core/util/util.dart';
import 'package:lanars_test_task/presentation/router/router.gr.dart';
import 'package:lanars_test_task/presentation/widgets/animations/shake_animation.dart';
import 'package:lanars_test_task/presentation/widgets/background/page_background.dart';

const double _logoSize = 300.0;

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(
        userRepository: context.read(),
      )..initial(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: _splashBlocListener,
        child: _buildSplash(context),
      ),
    );
  }

  void _splashBlocListener(
    BuildContext context,
    SplashState state,
  ) {
    state.whenOrNull(
      failed: (failure) {
        handleDefaultFailure() {
          showErrorSnackBar(
            context,
            defaultFailureToString(
              context,
              failure.maybeWhen(
                orElse: () => const Failure.empty(),
                unexpected: Failure.unexpected,
                statusCode: Failure.statusCode,
                network: Failure.network,
              ),
            ),
          );
          Future.delayed(
            const Duration(seconds: 2),
            () => context.replaceRoute(
              const AuthRoute(),
            ),
          );
        }

        failure.maybeWhen(
          orElse: () => handleDefaultFailure(),
          statusCode: (code, error, stacktrace) {
            if (code == 404) {
              Future.delayed(
                const Duration(seconds: 2),
                () => context.replaceRoute(const AuthRoute()),
              );
            } else {
              handleDefaultFailure();
            }
          },
        );
        showErrorSnackBar(context, context.s.serverError);
      },
      auth: () => Future.delayed(
        const Duration(seconds: 2),
        () => context.replaceRoute(const AuthRoute()),
      ),
      homeWithUser: (user) => Future.delayed(
        const Duration(seconds: 2),
        () => context.replaceRoute(const AuthenticatedWrapperRoute()),
      ),
    );
  }

  Widget _buildSplash(BuildContext context) {
    return PageBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: ShakeAnimation(
              child: Image.asset(
                Assets.gif.logo.path,
                width: _logoSize.w,
                height: _logoSize.h,
              ),
            ),
          ),
          const Spacer(),
          _buildTitle(context, context.s.lanars),
          const Spacer(flex: 2),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context, String title) {
    return Text(
      title.toUpperCase(),
      style: context.appTextTheme.h3.copyWith().paint(AppColors.secondary),
    );
  }
}
