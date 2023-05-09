import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../features/characters/data/models/favorite_character.dart';
import '../../features/characters/domain/models/character.dart';

@module
abstract class IsarModule {
  @preResolve
  Future<Isar> get isar async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [
        CharacterSchema,
        FavoriteCharacterSchema,
      ],
      directory: dir.path,
    );

    return isar;
  }
}
