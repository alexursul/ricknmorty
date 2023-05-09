
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/character.dart';

part 'load_characters_response.g.dart';
part 'load_characters_response.freezed.dart';

@Freezed(toJson: false)
class LoadCharactersResponse with _$LoadCharactersResponse {
  const LoadCharactersResponse._();

  const factory LoadCharactersResponse({
    required Map<String, dynamic> info,
    required List<Character> results,
  }) = _LoadCharactersResponse;

  factory LoadCharactersResponse.fromJson(Map<String, Object?> json) => _$LoadCharactersResponseFromJson(json);
}