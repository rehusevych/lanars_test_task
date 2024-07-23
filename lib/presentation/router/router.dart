import 'package:auto_route/auto_route.dart';
import 'package:lanars_test_task/presentation/auth/auth_page.dart';
import 'package:lanars_test_task/presentation/home/home_page.dart';
import 'package:lanars_test_task/presentation/router/wrapper/authenticatedWrapper.dart';
import 'package:lanars_test_task/presentation/splash/splash_page.dart';

const int _fadeInDurationInMilliseconds = 500;

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage),
    AutoRoute(page: AuthPage),
    CustomRoute(
      initial: true,
      page: AuthenticatedWrapperPage,
      name: 'AuthenticatedWrapperRouter',
      durationInMilliseconds: _fadeInDurationInMilliseconds,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      children: [
        AutoRoute(
          page: HomePage,
          initial: true,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
