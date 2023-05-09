import 'package:either_dart/either.dart';

import '../../../../core/error/failures.dart';

abstract class IFavoriteCharacterRepository {
  Future<Either<Failure, List<int>>> loadFavoriteCharacterIds();

  Future<Either<Failure, void>> addFavoriteCharacter({required int id});

  Future<Either<Failure, void>> removeFavoriteCharacter({required int id});
}
