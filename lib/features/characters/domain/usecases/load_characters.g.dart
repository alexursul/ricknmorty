// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_characters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoadCharactersParams _$$_LoadCharactersParamsFromJson(
        Map<String, dynamic> json) =>
    _$_LoadCharactersParams(
      limit: json['limit'] as int? ?? 20,
      offset: json['offset'] as int? ?? 0,
      nameLike: json['nameLike'] as String?,
      typeLike: json['typeLike'] as String?,
      speciesLike: json['speciesLike'] as String?,
      status: $enumDecodeNullable(_$CharacterStatusEnumMap, json['status']),
      gender: $enumDecodeNullable(_$CharacterGenderEnumMap, json['gender']),
    );

Map<String, dynamic> _$$_LoadCharactersParamsToJson(
        _$_LoadCharactersParams instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'nameLike': instance.nameLike,
      'typeLike': instance.typeLike,
      'speciesLike': instance.speciesLike,
      'status': instance.status,
      'gender': instance.gender,
    };

const _$CharacterStatusEnumMap = {
  CharacterStatus.alive: 'Alive',
  CharacterStatus.dead: 'Dead',
  CharacterStatus.unknown: 'unknown',
};

const _$CharacterGenderEnumMap = {
  CharacterGender.male: 'Male',
  CharacterGender.female: 'Female',
  CharacterGender.genderless: 'Genderless',
  CharacterGender.unknown: 'unknown',
};
