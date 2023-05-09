import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../../../../core/error/exceptions.dart';
import '../models/favorite_character.dart';

abstract class IFavoriteCharacterLocalDatasource {
  Future<List<int>> loadFavoriteCharacterIds();

  Future<void> addFavoriteCharacter({required int id});

  Future<void> removeFavoriteCharacter({required int id});
}

@Singleton(as: IFavoriteCharacterLocalDatasource)
class FavoriteCharacterLocalDatasource implements IFavoriteCharacterLocalDatasource {
  final Isar _isar;

  const FavoriteCharacterLocalDatasource(this._isar);

  @override
  Future<void> addFavoriteCharacter({required int id}) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.favoriteCharacters.put(FavoriteCharacter(id: id));
      });
    } on Exception catch (e) {
      throw StorageException(e.toString());
    }
  }

  @override
  Future<List<int>> loadFavoriteCharacterIds() async {
    try {
      final favoriteCharacters = await _isar.favoriteCharacters.where().findAll();
      return favoriteCharacters.map((e) => e.id).toList();
    } on Exception catch (e) {
      throw StorageException(e.toString());
    }
  }

  @override
  Future<void> removeFavoriteCharacter({required int id}) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.favoriteCharacters.delete(id);
      });
    } on Exception catch (e) {
      throw StorageException(e.toString());
    }
  }
}
