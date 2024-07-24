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
        ...createLazyBoxProviders(),
        ..._createAuthProviders(),
        ..._createUserProviders(),
        ..._createPostsProviders(),
      ],
      child: child,
    );
  }

  List<Provider> _createAuthProviders() => [
        Provider<FlutterSecureStorage>(
          create: (c) => const FlutterSecureStorage(),
        ),
        Provider<Connectivity>(
          create: (c) => Connectivity(),
        ),
        Provider<ConnectivityProvider>(
          create: (c) => ConnectivityProvider(connectivity: c.read()),
        ),
        Provider<AppAuthTokenStore>(
          create: (c) => AppAuthTokenStore(secureStorage: c.read()),
        ),
        Provider<Dio>(
          create: (c) => createDio(baseUrl),
        ),
        Provider<AuthApiClient>(
          create: (c) => AuthApiClient(createAuthDio()),
        ),
        Provider<TokenRefresher>(
          create: (c) => TokenRefresher(
            store: c.read<AppAuthTokenStore>(),
          ),
        ),
        Provider<Dio>(
          create: (c) => createAuthenticatedDio(
            baseUrl,
            refresher: c.read(),
            additionalInterceptors: [],
          ),
        ),
      ];

  List<Provider> _createUserProviders() => <Provider>[
        Provider<UserServiceRemote>(
          create: (c) => UserServiceRemote(
            c.read<AuthApiClient>().signIn,
          ),
        ),
        Provider<UserServiceLocal>(
          create: (c) => UserServiceLocal(c.read()),
        ),
        Provider<UserRepository>(
          create: (c) => UserRepository(
            remote: c.read(),
            local: c.read(),
            tokenStore: c.read(),
          ),
        ),
      ];

  List<Provider> _createPostsProviders() => <Provider>[
        Provider<PostsApiClient>(
          create: (c) => PostsApiClient(c.read()),
        ),
        Provider<PostsServiceRemote>(
          create: (c) => PostsServiceRemote(
            c.read<PostsApiClient>().getPosts,
          ),
        ),
        Provider<PostsServiceLocal>(
          create: (c) => PostsServiceLocal(c.read()),
        ),
        Provider<PostsRepository>(
          create: (c) => PostsRepository(
            remote: c.read(),
            local: c.read(),
          ),
        ),
      ];
}
