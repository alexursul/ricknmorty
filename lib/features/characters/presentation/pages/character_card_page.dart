import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../domain/models/character.dart';
import '../state/fav_list.dart';
import '../widgets/character_image_hero.dart';

class CharacterCardPage extends StatelessWidget {
  final Character character;

  const CharacterCardPage({
    required this.character,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: ListView(
        children: [
          CharacterImageHero(character: character),
          Observer(
            builder: (context) {
              final characterIsFavorite = context.read<FavList>().characterIds.contains(character.id);

              return ListTile(
                title: Text(
                  character.name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
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
              );
            },
          ),
          const Divider(color: Colors.black, height: 2),
          ListTile(
            title: const Text('Gender'),
            subtitle: Text(character.gender.value),
          ),
          ListTile(
            title: const Text('Species'),
            subtitle: Text(character.species),
          ),
          ListTile(
            title: const Text('Status'),
            subtitle: Text(character.status.value),
          ),
          ListTile(
            title: const Text('Type'),
            subtitle: Text(character.type.isEmpty ? '—' : character.type),
          ),
          ListTile(
            title: const Text('Location'),
            subtitle: Text(character.location.name),
          ),
          ListTile(
            title: const Text('Origin'),
            subtitle: Text(character.origin.name),
          ),
          ListTile(
            title: const Text('Episodes (number)'),
            subtitle: Text(character.episode.length.toString()),
          ),
        ],
      ),
    );
  }
}
