import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/models/character.dart';
import '../models/load_characters_response.dart';

part 'character_remote_datasource.g.dart';

abstract class ICharacterRemoteDatasource {
  Future<LoadCharactersResponse> loadCharacters({
    required int page,
    String? nameContains,
    String? typeContains,
    String? speciesContains,
    CharacterStatus? status,
    CharacterGender? gender,
  });
}

@RestApi()
@Singleton(as: ICharacterRemoteDatasource)
abstract class CharacterRemoteDatasource implements ICharacterRemoteDatasource {
  @factoryMethod
  factory CharacterRemoteDatasource(Dio dio) => _CharacterRemoteDatasource(dio);

  @override
  @GET('/character')
  Future<LoadCharactersResponse> loadCharacters({
    @Query('page') int? page,
    @Query('name') String? nameContains,
    @Query('type') String? typeContains,
    @Query('species') String? speciesContains,
    @Query('status') CharacterStatus? status,
    @Query('gender') CharacterGender? gender,
  });
}

const remoteDatasourcePageSize = 20;