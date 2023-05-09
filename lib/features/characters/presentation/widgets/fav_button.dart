import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../state/fav_list.dart';

class FavButton extends StatelessWidget {
  final int characterId;

  const FavButton({
    required this.characterId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final characterIsFavorite = context.read<FavList>().characterIds.contains(characterId);

        return IconButton(
          icon: Icon(
            characterIsFavorite ? Icons.star : Icons.star_outline,
            color: Colors.amber,
            size: 28,
          ),
          onPressed: () {
            if (characterIsFavorite) {
              context.read<FavList>().removeFromFavList(id: characterId);
            } else {
              context.read<FavList>().addToFavList(id: characterId);
            }
          },
        );
      },
    );
  }
}
