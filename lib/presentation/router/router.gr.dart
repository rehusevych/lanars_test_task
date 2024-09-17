// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:lanars_test_task/presentation/auth/auth_page.dart' as _i1;
import 'package:lanars_test_task/presentation/home/home_page.dart' as _i3;
import 'package:lanars_test_task/presentation/home/posts_realm/posts_realm_page.dart'
    as _i4;
import 'package:lanars_test_task/presentation/router/wrapper/authenticated_wrapper.dart'
    as _i2;
import 'package:lanars_test_task/presentation/splash/splash_page.dart' as _i5;

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i6.PageRouteInfo<void> {
  const AuthRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.AuthPage();
    },
  );
}

/// generated route for
/// [_i2.AuthenticatedWrapperPage]
class AuthenticatedWrapperRoute extends _i6.PageRouteInfo<void> {
  const AuthenticatedWrapperRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AuthenticatedWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthenticatedWrapperRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.AuthenticatedWrapperPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.PostsRealmPage]
class PostsRealmRoute extends _i6.PageRouteInfo<void> {
  const PostsRealmRoute({List<_i6.PageRouteInfo>? children})
      : super(
          PostsRealmRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostsRealmRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.PostsRealmPage();
    },
  );
}

/// generated route for
/// [_i5.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SplashPage();
    },
  );
}
