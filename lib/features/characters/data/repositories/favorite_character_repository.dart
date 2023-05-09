import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/favorite_character_repository.dart';
import '../datasources/favorite_character_local_datasource.dart';

@Singleton(as: IFavoriteCharacterRepository)
class FavoriteCharacterRepository implements IFavoriteCharacterRepository {
  final IFavoriteCharacterLocalDatasource _favoriteCharacterDatasource;

  const FavoriteCharacterRepository(
    this._favoriteCharacterDatasource,
  );

  @override
  Future<Either<Failure, void>> addFavoriteCharacter({required int id}) async {
    try {
      await _favoriteCharacterDatasource.addFavoriteCharacter(
        id: id,
      );

      return const Right(null);
    } on StorageException catch (e) {
      return Left(StorageFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<int>>> loadFavoriteCharacterIds() async {
    try {
      final characterIds = await _favoriteCharacterDatasource.loadFavoriteCharacterIds();

      return Right(characterIds);
    } on StorageException catch (e) {
      return Left(StorageFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> removeFavoriteCharacter({required int id}) async {
    try {
      await _favoriteCharacterDatasource.removeFavoriteCharacter(
        id: id,
      );

      return const Right(null);
    } on StorageException catch (e) {
      return Left(StorageFailure(e.message));
    }
  }
}
