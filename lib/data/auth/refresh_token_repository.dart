import 'package:lanars_test_task/data/auth/token_store.dart';
import 'package:uuid/uuid.dart';

class TokenRefresher {
  final AppAuthTokenStore store;

  const TokenRefresher({
    required this.store,
  });

  Future<String> refresh({bool forceRefresh = false}) async {
    //add this lines of code because api does'nt need token for access, it can be removed

    final refreshedToken = const Uuid().v4();
    await store.persistAccessToken(refreshedToken);
    return refreshedToken;
  }
}

class RefreshTokenExpired implements Exception {}
