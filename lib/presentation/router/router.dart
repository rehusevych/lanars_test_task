import 'package:auto_route/auto_route.dart';
import 'package:lanars_test_task/presentation/auth/splash_page.dart';

const int _fadeInDurationInMilliseconds = 500;

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
    )
  ],
)
class $AppRouter {}
