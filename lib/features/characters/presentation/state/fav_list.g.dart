// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FavList on _FavList, Store {
  late final _$characterIdsAtom =
      Atom(name: '_FavList.characterIds', context: context);

  @override
  ObservableList<int> get characterIds {
    _$characterIdsAtom.reportRead();
    return super.characterIds;
  }

  @override
  set characterIds(ObservableList<int> value) {
    _$characterIdsAtom.reportWrite(value, super.characterIds, () {
      super.characterIds = value;
    });
  }

  late final _$loadFavListAsyncAction =
      AsyncAction('_FavList.loadFavList', context: context);

  @override
  Future<void> loadFavList() {
    return _$loadFavListAsyncAction.run(() => super.loadFavList());
  }

  late final _$addToFavListAsyncAction =
      AsyncAction('_FavList.addToFavList', context: context);

  @override
  Future<void> addToFavList({required int id}) {
    return _$addToFavListAsyncAction.run(() => super.addToFavList(id: id));
  }

  late final _$removeFromFavListAsyncAction =
      AsyncAction('_FavList.removeFromFavList', context: context);

  @override
  Future<void> removeFromFavList({required int id}) {
    return _$removeFromFavListAsyncAction
        .run(() => super.removeFromFavList(id: id));
  }

  @override
  String toString() {
    return '''
characterIds: ${characterIds}
    ''';
  }
}
