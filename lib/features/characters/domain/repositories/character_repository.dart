import 'package:either_dart/either.dart';

import '../../../../core/error/failures.dart';
import '../models/character.dart';

abstract class ICharacterRepository {
  Future<Either<Failure, List<Character>>> loadCharacters({
    required int limit,
    required int offset,
    String? nameContains,
    String? typeContains,
    String? speciesContains,
    CharacterStatus? status,
    CharacterGender? gender,
  });
}
