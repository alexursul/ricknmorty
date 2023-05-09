import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../domain/models/character.dart';

class CharacterImageHero extends StatelessWidget {
  final Character character;
  final double borderRadius;
  final double? width;

  const CharacterImageHero({
    required this.character,
    this.borderRadius = 0,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: ValueKey('Image of Character${character.id}'),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: CachedNetworkImage(
          cacheKey: character.name,
          imageUrl: character.image,
          width: width,
          fit: BoxFit.fitWidth,
          placeholder: (context, url) => const FittedBox(
            fit: BoxFit.none,
            child: SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
