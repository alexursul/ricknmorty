// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i6;

import 'core/http/dio_module.dart' as _i18;
import 'core/network/network_info_service.dart' as _i5;
import 'core/storage/isar_module.dart' as _i17;
import 'features/characters/data/datasources/character_local_datasource.dart'
    as _i7;
import 'features/characters/data/datasources/character_remote_datasource.dart'
    as _i4;
import 'features/characters/data/datasources/favorite_character_local_datasource.dart'
    as _i10;
import 'features/characters/data/repositories/character_repository.dart' as _i9;
import 'features/characters/data/repositories/favorite_character_repository.dart'
    as _i12;
import 'features/characters/domain/repositories/character_repository.dart'
    as _i8;
import 'features/characters/domain/repositories/favorite_character_repository.dart'
    as _i11;
import 'features/characters/domain/usecases/add_favorite_character.dart'
    as _i16;
import 'features/characters/domain/usecases/load_characters.dart' as _i13;
import 'features/characters/domain/usecases/load_favorite_character_ids.dart'
    as _i14;
import 'features/characters/domain/usecases/remove_favorite_character.dart'
    as _i15;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    final isarModule = _$IsarModule();
    await gh.factoryAsync<_i3.Dio>(
      () => registerModule.dio,
      preResolve: true,
    );
    gh.singleton<_i4.ICharacterRemoteDatasource>(
        _i4.CharacterRemoteDatasource(gh<_i3.Dio>()));
    gh.singleton<_i5.INetworkInfoService>(_i5.NetworkInfoService());
    await gh.factoryAsync<_i6.Isar>(
      () => isarModule.isar,
      preResolve: true,
    );
    gh.singleton<_i7.ICharacterLocalDatasource>(
        _i7.CharacterLocalDatasource(gh<_i6.Isar>()));
    gh.singleton<_i8.ICharacterRepository>(_i9.CharacterRepository(
      gh<_i5.INetworkInfoService>(),
      gh<_i7.ICharacterLocalDatasource>(),
      gh<_i4.ICharacterRemoteDatasource>(),
    ));
    gh.singleton<_i10.IFavoriteCharacterLocalDatasource>(
        _i10.FavoriteCharacterLocalDatasource(gh<_i6.Isar>()));
    gh.singleton<_i11.IFavoriteCharacterRepository>(
        _i12.FavoriteCharacterRepository(
            gh<_i10.IFavoriteCharacterLocalDatasource>()));
    gh.factory<_i13.LoadCharacters>(
        () => _i13.LoadCharacters(gh<_i8.ICharacterRepository>()));
    gh.factory<_i14.LoadFavoriteCharacterIds>(() =>
        _i14.LoadFavoriteCharacterIds(gh<_i11.IFavoriteCharacterRepository>()));
    gh.factory<_i15.RemoveFavoriteCharacter>(() =>
        _i15.RemoveFavoriteCharacter(gh<_i11.IFavoriteCharacterRepository>()));
    gh.factory<_i16.AddFavoriteCharacter>(() =>
        _i16.AddFavoriteCharacter(gh<_i11.IFavoriteCharacterRepository>()));
    return this;
  }
}

class _$IsarModule extends _i17.IsarModule {}

class _$RegisterModule extends _i18.RegisterModule {}
