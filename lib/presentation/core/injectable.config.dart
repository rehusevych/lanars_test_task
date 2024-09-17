// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/posts/posts_realm_repository.dart' as _i448;
import '../../data/posts/service/local_realm.dart' as _i216;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i216.ILocalStorage>(() => _i216.RealmStorage());
    gh.factory<_i448.PostsRealmRepository>(
        () => _i448.PostsRealmRepository(gh<_i216.ILocalStorage>()));
    return this;
  }
}
