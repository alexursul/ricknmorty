import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/utils/usecase.dart';
import '../../domain/usecases/add_favorite_character.dart';
import '../../domain/usecases/load_favorite_character_ids.dart';
import '../../domain/usecases/remove_favorite_character.dart';

part 'fav_list.g.dart';

// ignore: library_private_types_in_public_api
class FavList = _FavList with _$FavList;

abstract class _FavList with Store {
  final _addFavoriteCharacter = GetIt.I.get<AddFavoriteCharacter>();
  final _removeFavoriteCharacter = GetIt.I.get<RemoveFavoriteCharacter>();
  final _loadFavoriteCharacterIds = GetIt.I.get<LoadFavoriteCharacterIds>();

  @observable
  ObservableList<int> characterIds = ObservableList<int>();

  @action
  Future<void> loadFavList() async {
    final response = await _loadFavoriteCharacterIds(NoParams());
    if (response.isRight) {
      characterIds.addAll(response.right);
    }
  }

  @action
  Future<void> addToFavList({required int id}) async {
    characterIds.add(id);
    final response = await _addFavoriteCharacter(AddFavoriteCharacterParams(id: id));
    if (response.isLeft) {
      characterIds.remove(id);
    }
  }

  @action
  Future<void> removeFromFavList({required int id}) async {
    characterIds.remove(id);
    final response = await _removeFavoriteCharacter(RemoveFavoriteCharacterParams(id: id));
    if (response.isLeft) {
      characterIds.add(id);
    }
  }
}
