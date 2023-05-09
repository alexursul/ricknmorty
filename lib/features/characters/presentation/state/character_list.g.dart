// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CharacterList on _CharacterList, Store {
  Computed<bool>? _$charactersAreLoadingComputed;

  @override
  bool get charactersAreLoading => (_$charactersAreLoadingComputed ??=
          Computed<bool>(() => super.charactersAreLoading,
              name: '_CharacterList.charactersAreLoading'))
      .value;
  Computed<bool>? _$filtersAreSetComputed;

  @override
  bool get filtersAreSet =>
      (_$filtersAreSetComputed ??= Computed<bool>(() => super.filtersAreSet,
              name: '_CharacterList.filtersAreSet'))
          .value;

  late final _$loadCharactersFutureAtom =
      Atom(name: '_CharacterList.loadCharactersFuture', context: context);

  @override
  ObservableFuture<Either<Failure, List<Character>>>? get loadCharactersFuture {
    _$loadCharactersFutureAtom.reportRead();
    return super.loadCharactersFuture;
  }

  @override
  set loadCharactersFuture(
      ObservableFuture<Either<Failure, List<Character>>>? value) {
    _$loadCharactersFutureAtom.reportWrite(value, super.loadCharactersFuture,
        () {
      super.loadCharactersFuture = value;
    });
  }

  late final _$listIsFullyLoadedAtom =
      Atom(name: '_CharacterList.listIsFullyLoaded', context: context);

  @override
  bool get listIsFullyLoaded {
    _$listIsFullyLoadedAtom.reportRead();
    return super.listIsFullyLoaded;
  }

  @override
  set listIsFullyLoaded(bool value) {
    _$listIsFullyLoadedAtom.reportWrite(value, super.listIsFullyLoaded, () {
      super.listIsFullyLoaded = value;
    });
  }

  late final _$charactersAtom =
      Atom(name: '_CharacterList.characters', context: context);

  @override
  ObservableList<Character> get characters {
    _$charactersAtom.reportRead();
    return super.characters;
  }

  @override
  set characters(ObservableList<Character> value) {
    _$charactersAtom.reportWrite(value, super.characters, () {
      super.characters = value;
    });
  }

  late final _$filterParamsAtom =
      Atom(name: '_CharacterList.filterParams', context: context);

  @override
  LoadCharactersParams get filterParams {
    _$filterParamsAtom.reportRead();
    return super.filterParams;
  }

  @override
  set filterParams(LoadCharactersParams value) {
    _$filterParamsAtom.reportWrite(value, super.filterParams, () {
      super.filterParams = value;
    });
  }

  late final _$_CharacterListActionController =
      ActionController(name: '_CharacterList', context: context);

  @override
  void loadCharacters({bool reset = false}) {
    final _$actionInfo = _$_CharacterListActionController.startAction(
        name: '_CharacterList.loadCharacters');
    try {
      return super.loadCharacters(reset: reset);
    } finally {
      _$_CharacterListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSearchByName(String search, {bool applyDebounce = true}) {
    final _$actionInfo = _$_CharacterListActionController.startAction(
        name: '_CharacterList.setSearchByName');
    try {
      return super.setSearchByName(search, applyDebounce: applyDebounce);
    } finally {
      _$_CharacterListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateFilterParams(LoadCharactersParams newFiltersParams) {
    final _$actionInfo = _$_CharacterListActionController.startAction(
        name: '_CharacterList.updateFilterParams');
    try {
      return super.updateFilterParams(newFiltersParams);
    } finally {
      _$_CharacterListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loadCharactersFuture: ${loadCharactersFuture},
listIsFullyLoaded: ${listIsFullyLoaded},
characters: ${characters},
filterParams: ${filterParams},
charactersAreLoading: ${charactersAreLoading},
filtersAreSet: ${filtersAreSet}
    ''';
  }
}
