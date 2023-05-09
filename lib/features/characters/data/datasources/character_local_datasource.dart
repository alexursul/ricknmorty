import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../../../../core/error/exceptions.dart';
import '../../domain/models/character.dart';

abstract class ICharacterLocalDatasource {
  Future<List<Character>> loadCharacters({
    required int limit,
    required int offset,
    String? nameContains,
    String? typeContains,
    String? speciesContains,
    CharacterStatus? status,
    CharacterGender? gender,
  });

  Future<void> cacheCharacters({required List<Character> characters});
}

@Singleton(as: ICharacterLocalDatasource)
class CharacterLocalDatasource implements ICharacterLocalDatasource {
  final Isar _isar;

  const CharacterLocalDatasource(this._isar);

  @override
  Future<List<Character>> loadCharacters({
    required int limit,
    required int offset,
    String? nameContains,
    String? typeContains,
    String? speciesContains,
    CharacterStatus? status,
    CharacterGender? gender,
  }) {
    try {
      return _isar.characters
          .filter()
          .optional(nameContains != null, (q) => q.nameContains(nameContains!, caseSensitive: false))
          .and()
          .optional(typeContains != null, (q) => q.typeContains(typeContains!, caseSensitive: false))
          .and()
          .optional(speciesContains != null, (q) => q.speciesContains(speciesContains!, caseSensitive: false))
          .and()
          .optional(status != null, (q) => q.statusEqualTo(status!))
          .and()
          .optional(gender != null, (q) => q.genderEqualTo(gender!))
          .offset(offset)
          .limit(limit)
          .findAll();
    } on Exception catch (e) {
      throw StorageException(e.toString());
    }
  }

  @override
  Future<void> cacheCharacters({required List<Character> characters}) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.characters.putAll(characters);
      });
    } on Exception catch (e) {
      throw StorageException(e.toString());
    }
  }
}
