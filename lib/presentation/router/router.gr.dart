// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:lanars_test_task/presentation/auth/auth_page.dart' as _i2;
import 'package:lanars_test_task/presentation/home/home_page.dart' as _i4;
import 'package:lanars_test_task/presentation/router/wrapper/authenticated_wrapper.dart'
    as _i3;
import 'package:lanars_test_task/presentation/splash/splash_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthPage(),
      );
    },
    AuthenticatedWrapperRouter.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthenticatedWrapperPage(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        _i5.RouteConfig(
          AuthRoute.name,
          path: '/auth-page',
        ),
        _i5.RouteConfig(
          AuthenticatedWrapperRouter.name,
          path: '/authenticated-wrapper-page',
          children: [
            _i5.RouteConfig(
              HomeRoute.name,
              path: '',
              parent: AuthenticatedWrapperRouter.name,
            )
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i5.PageRouteInfo<void> {
  const AuthRoute()
      : super(
          AuthRoute.name,
          path: '/auth-page',
        );

  static const String name = 'AuthRoute';
}

/// generated route for
/// [_i3.AuthenticatedWrapperPage]
class AuthenticatedWrapperRouter extends _i5.PageRouteInfo<void> {
  const AuthenticatedWrapperRouter({List<_i5.PageRouteInfo>? children})
      : super(
          AuthenticatedWrapperRouter.name,
          path: '/authenticated-wrapper-page',
          initialChildren: children,
        );

  static const String name = 'AuthenticatedWrapperRouter';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}
