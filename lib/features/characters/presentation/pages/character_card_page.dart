import 'package:flutter/material.dart';

import '../../domain/models/character.dart';
import '../widgets/character_image_hero.dart';
import '../widgets/fav_button.dart';

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
          ListTile(
            title: Text(
              character.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            trailing: FavButton(characterId: character.id),
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
