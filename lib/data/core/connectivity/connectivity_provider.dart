import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityProvider {
  final Connectivity _connectivity;

  const ConnectivityProvider({
    required Connectivity connectivity,
  }) : _connectivity = connectivity;

  Future<bool> checkConnection() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    // ignore: unrelated_type_equality_checks
    return connectivityResult != ConnectivityResult.none;
  }
}
