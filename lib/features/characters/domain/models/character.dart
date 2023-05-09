// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../../../../core/utils/converters.dart';
import 'character_location.dart';
import 'character_origin.dart';

part 'character.freezed.dart';

part 'character.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class Character with _$Character {
  const Character._();

  const factory Character({
    required int id,
    required String name,
    @enumerated required CharacterStatus status,
    required String species,
    required String type,
    @enumerated required CharacterGender gender,
    required CharacterOrigin origin,
    required CharacterLocation location,
    required String image,
    required List<String> episode,
    required String url,
    @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString) required DateTime created,
  }) = _Character;

  factory Character.fromJson(Map<String, Object?> json) => _$CharacterFromJson(json);

  @override
  // ignore: recursive_getters
  Id get id => id;
}

enum CharacterStatus {
  @JsonValue('Alive')
  alive('Alive'),
  @JsonValue('Dead')
  dead('Dead'),
  @JsonValue('unknown')
  unknown('unknown');

  final String value;

  const CharacterStatus(this.value);

  String toJson() => value;
}

enum CharacterGender {
  @JsonValue('Male')
  male('Male'),
  @JsonValue('Female')
  female('Female'),
  @JsonValue('Genderless')
  genderless('Genderless'),
  @JsonValue('unknown')
  unknown('unknown');

  final String value;

  const CharacterGender(this.value);

  String toJson() => value;
}
