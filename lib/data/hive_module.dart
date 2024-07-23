import 'package:hive_flutter/hive_flutter.dart';
import 'package:lanars_test_task/data/user/model/user.dart';
import 'package:provider/provider.dart';

class _BoxNames {
  _BoxNames._();
  static const user = 'user';
}

Future<List<BoxBase>> createBoxes() => Future.wait([
      Hive.openLazyBox<UserData>(_BoxNames.user),
    ]);

List<Provider> createLazyBoxProviders() => [
      Provider<LazyBox<UserData>>(
        create: (c) => Hive.lazyBox<UserData>(_BoxNames.user),
      ),
    ];

List<BoxBase> getAllBoxes() => [
      Hive.lazyBox<UserData>(_BoxNames.user),
    ];
