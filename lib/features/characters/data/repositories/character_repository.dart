import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info_service.dart';
import '../../domain/models/character.dart';
import '../../domain/repositories/character_repository.dart';
import '../datasources/character_local_datasource.dart';
import '../datasources/character_remote_datasource.dart';

@Singleton(as: ICharacterRepository)
class CharacterRepository implements ICharacterRepository {
  final INetworkInfoService _networkInfoService;
  final ICharacterLocalDatasource _localDatasource;
  final ICharacterRemoteDatasource _remoteDatasource;

  const CharacterRepository(
    this._networkInfoService,
    this._localDatasource,
    this._remoteDatasource,
  );

  @override
  Future<Either<Failure, List<Character>>> loadCharacters({
    required int limit,
    required int offset,
    String? nameContains,
    String? typeContains,
    String? speciesContains,
    CharacterStatus? status,
    CharacterGender? gender,
  }) async {
    if (await _networkInfoService.isConnected) {
      try {
        final response = await _remoteDatasource.loadCharacters(
          page: (offset / remoteDatasourcePageSize).floor() + 1,
          nameContains: nameContains,
          typeContains: typeContains,
          speciesContains: speciesContains,
          status: status,
          gender: gender,
        );

        await _localDatasource.cacheCharacters(characters: response.results);
        return Right(response.results);
      } on StorageException catch (e) {
        return Left(StorageFailure(e.message));
      } on Exception catch (e) {
        return Left(ApiFailure(e.toString()));
      }
    } else {
      try {
        final characters = await _localDatasource.loadCharacters(
          limit: limit,
          offset: offset,
          nameContains: nameContains,
          typeContains: typeContains,
          speciesContains: speciesContains,
          status: status,
          gender: gender,
        );

        return Right(characters);
      } on StorageException catch (e) {
        return Left(StorageFailure(e.message));
      }
    }
  }

}
