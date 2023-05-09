import 'dart:convert';

import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../features/characters/domain/models/character.dart';
import '../../../features/characters/presentation/pages/character_card_page.dart';
import '../../../features/characters/presentation/state/fav_list.dart';
import '../../../features/home/presentation/pages/home_page.dart';

class CharacterLocation extends BeamLocation<BeamState> {
  @override
  bool get strictPathPatterns => true;

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(child: HomePage(), key: ValueKey('HomePage')),
      if ((state.pathParameters['id']?.isNotEmpty ?? false) && state.routeState != null)
        BeamPage(
          child: CharacterCardPage(
            character: Character.fromJson(
              jsonDecode(state.routeState as String) as Map<String, dynamic>,
            ),
          ),
          key: const ValueKey('CharacterCardPage'),
        ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => [
        '/',
        '/character',
        '/character/:id',
      ];

  @override
  Widget builder(BuildContext context, Widget navigator) {
    // Share fav list across all the pages
    return Provider(
      create: (context) => FavList()..loadFavList(),
      child: super.builder(context, navigator),
    );
  }
}
