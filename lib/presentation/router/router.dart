import 'package:auto_route/auto_route.dart';
import 'package:lanars_test_task/presentation/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
          path: '/',
        ),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(
          page: AuthenticatedWrapperRoute.page,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              initial: true,
            ),
            AutoRoute(
              page: PostsRealmRoute.page,
            ),
          ],
        ),
      ];
}
