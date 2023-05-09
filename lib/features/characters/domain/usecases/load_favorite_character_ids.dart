import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/utils/usecase.dart';
import '../repositories/favorite_character_repository.dart';

@injectable
class LoadFavoriteCharacterIds extends Usecase<List<int>, NoParams> {
  final IFavoriteCharacterRepository _favoriteCharacterRepository;

  LoadFavoriteCharacterIds(this._favoriteCharacterRepository);

  @override
  Future<Either<Failure, List<int>>> call(NoParams params) async {
    return _favoriteCharacterRepository.loadFavoriteCharacterIds();
  }
}

