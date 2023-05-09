import 'dart:convert';

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../../domain/models/character.dart';
import 'character_image_hero.dart';
import 'fav_button.dart';

class CharacterListTile extends StatelessWidget {
  final Character character;

  const CharacterListTile({
    required this.character,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 25,
      leading: CharacterImageHero(
        character: character,
        borderRadius: 100,
        width: 60,
      ),
      minLeadingWidth: 30,
      title: Text(character.name),
      trailing: FavButton(characterId: character.id),
      onTap: () {
        Beamer.of(context).beamToNamed(
          '/character/${character.id}',
          routeState: jsonEncode(character.toJson()),
          beamBackOnPop: true,
        );
      },
    );
  }
}
