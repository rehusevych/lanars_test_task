import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lanars_test_task/extensions/l10n.dart';
import 'package:lanars_test_task/generated/app_localizations.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';
import 'package:lanars_test_task/presentation/router/router.gr.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

part 'dependencies.dart';

const Size _designSize = Size(360, 800);

final appRouter = AppRouter();

class App extends StatelessWidget {
  final SharedPreferences sharedPreferences;

  const App({
    Key? key,
    required this.sharedPreferences,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp.router(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      onGenerateTitle: (context) => context.s.lanars,
      supportedLocales: const [
        Locale('en'),
      ],
      routeInformationParser: appRouter.defaultRouteParser(
        includePrefixMatches: true,
      ),
      routerDelegate: appRouter.delegate(
        initialRoutes: [
          const SplashRoute(),
        ],
      ),
      builder: (context, child) {
        ScreenUtil.init(
          context,
          designSize: _designSize,
          minTextAdapt: true,
          splitScreenMode: true,
        );
        return AnnotatedRegion(
          value: SystemUiOverlayStyle.dark,
          child: _ProvideDependencies(
            sharedPreferences: sharedPreferences,
            child: AppTheme(
              data: AppThemeData(),
              child: child,
            ),
          ),
        );
      },
    );
  }
}
