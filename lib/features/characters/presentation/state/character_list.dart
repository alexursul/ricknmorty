import 'package:easy_debounce/easy_debounce.dart';
import 'package:either_dart/either.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/error/failures.dart';
import '../../domain/models/character.dart';
import '../../domain/usecases/load_characters.dart';

part 'character_list.g.dart';

// ignore: library_private_types_in_public_api
class CharacterList = _CharacterList with _$CharacterList;

abstract class _CharacterList with Store {
  final _loadCharacters = GetIt.I.get<LoadCharacters>();

  @observable
  ObservableFuture<Either<Failure, List<Character>>>? loadCharactersFuture;

  @observable
  bool listIsFullyLoaded = false;

  @observable
  ObservableList<Character> characters = ObservableList<Character>();

  @observable
  LoadCharactersParams filterParams = const LoadCharactersParams();

  @computed
  bool get charactersAreLoading => loadCharactersFuture?.status == FutureStatus.pending;

  @computed
  bool get filtersAreSet => filterParams != const LoadCharactersParams().copyWith(nameLike: filterParams.nameLike);

  @action
  void loadCharacters({bool reset = false}) {
    if (reset) {
      listIsFullyLoaded = false;
      characters.clear();
    }

    loadCharactersFuture = ObservableFuture(
      _loadCharacters(filterParams.copyWith(offset: characters.length)).thenRight(
        (right) {
          characters.addAll(right);
          listIsFullyLoaded = right.length < filterParams.limit;

          return Right(right);
        },
      ),
    );
  }

  @action
  void setSearchByName(String search, {bool applyDebounce = true}) {
    filterParams = filterParams.copyWith(nameLike: search);
    EasyDebounce.debounce(
      'reloadCharacters',
      applyDebounce ? const Duration(milliseconds: 1000) : Duration.zero,
      () => loadCharacters(reset: true),
    );
  }

  @action
  void updateFilterParams(LoadCharactersParams newFiltersParams) {
    if (filterParams != newFiltersParams) {
      filterParams = newFiltersParams;
      loadCharacters(reset: true);
    }
  }
}
