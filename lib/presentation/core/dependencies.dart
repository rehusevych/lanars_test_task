part of 'app.dart';

class _ProvideDependencies extends StatelessWidget {
  final SharedPreferences sharedPreferences;
  final Widget child;

  const _ProvideDependencies({
    Key? key,
    required this.sharedPreferences,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<SharedPreferences>(
          create: (c) => sharedPreferences,
        ),
      ],
      child: child,
    );
  }
}
