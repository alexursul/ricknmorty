import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/utils/usecase.dart';
import '../repositories/favorite_character_repository.dart';

@injectable
class RemoveFavoriteCharacter extends Usecase<void, RemoveFavoriteCharacterParams> {
  final IFavoriteCharacterRepository _favoriteCharacterRepository;

  RemoveFavoriteCharacter(this._favoriteCharacterRepository);

  @override
  Future<Either<Failure, void>> call(RemoveFavoriteCharacterParams params) {
    return _favoriteCharacterRepository.removeFavoriteCharacter(
      id: params.id,
    );
  }
}

class RemoveFavoriteCharacterParams {
  final int id;

  const RemoveFavoriteCharacterParams({required this.id});
}
