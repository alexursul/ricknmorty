import 'dart:convert';

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../domain/models/character.dart';
import '../state/fav_list.dart';
import 'character_image_hero.dart';

class CharacterListTile extends StatelessWidget {
  final Character character;

  const CharacterListTile({
    required this.character,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final characterIsFavorite = context.read<FavList>().characterIds.contains(character.id);
        return ListTile(
          minVerticalPadding: 25,
          leading: CharacterImageHero(
            character: character,
            borderRadius: 100,
            width: 60,
          ),
          minLeadingWidth: 30,
          title: Text(character.name),
          trailing: IconButton(
            icon: Icon(
              characterIsFavorite ? Icons.star : Icons.star_outline,
              color: Colors.amber,
              size: 28,
            ),
            onPressed: () {
              if (characterIsFavorite) {
                context.read<FavList>().removeFromFavList(id: character.id);
              } else {
                context.read<FavList>().addToFavList(id: character.id);
              }
            },
          ),
          onTap: () {
            Beamer.of(context).beamToNamed(
              '/character/${character.id}',
              routeState: jsonEncode(character.toJson()),
              beamBackOnPop: true,
            );
          },
        );
      },
    );
  }
}
