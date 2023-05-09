import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/utils/usecase.dart';
import '../repositories/favorite_character_repository.dart';

@injectable
class AddFavoriteCharacter extends Usecase<void, AddFavoriteCharacterParams> {
  final IFavoriteCharacterRepository _favoriteCharacterRepository;

  AddFavoriteCharacter(this._favoriteCharacterRepository);

  @override
  Future<Either<Failure, void>> call(AddFavoriteCharacterParams params) {
    return _favoriteCharacterRepository.addFavoriteCharacter(
      id: params.id,
    );
  }
}

class AddFavoriteCharacterParams {
  final int id;

  const AddFavoriteCharacterParams({required this.id});
}
