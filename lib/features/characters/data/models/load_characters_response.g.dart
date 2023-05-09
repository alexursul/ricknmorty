// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_characters_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoadCharactersResponse _$$_LoadCharactersResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LoadCharactersResponse(
      info: json['info'] as Map<String, dynamic>,
      results: (json['results'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
