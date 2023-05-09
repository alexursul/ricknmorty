import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/utils/usecase.dart';
import '../models/character.dart';
import '../repositories/character_repository.dart';

part 'load_characters.freezed.dart';

part 'load_characters.g.dart';

@injectable
class LoadCharacters extends Usecase<List<Character>, LoadCharactersParams> {
  final ICharacterRepository _characterRepository;

  LoadCharacters(this._characterRepository);

  @override
  Future<Either<Failure, List<Character>>> call(LoadCharactersParams params) async {
    return _characterRepository.loadCharacters(
      limit: params.limit,
      offset: params.offset,
      nameContains: params.nameLike,
      typeContains: params.typeLike,
      speciesContains: params.speciesLike,
      status: params.status,
      gender: params.gender,
    );
  }
}

@freezed
class LoadCharactersParams with _$LoadCharactersParams {
  const factory LoadCharactersParams({
    @Default(20) int limit,
    @Default(0) int offset,
    String? nameLike,
    String? typeLike,
    String? speciesLike,
    CharacterStatus? status,
    CharacterGender? gender,
  }) = _LoadCharactersParams;

  factory LoadCharactersParams.fromJson(Map<String, Object?> json) => _$LoadCharactersParamsFromJson(json);
}
