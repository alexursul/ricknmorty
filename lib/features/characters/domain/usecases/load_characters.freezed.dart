// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_characters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoadCharactersParams _$LoadCharactersParamsFromJson(Map<String, dynamic> json) {
  return _LoadCharactersParams.fromJson(json);
}

/// @nodoc
mixin _$LoadCharactersParams {
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  String? get nameLike => throw _privateConstructorUsedError;
  String? get typeLike => throw _privateConstructorUsedError;
  String? get speciesLike => throw _privateConstructorUsedError;
  CharacterStatus? get status => throw _privateConstructorUsedError;
  CharacterGender? get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadCharactersParamsCopyWith<LoadCharactersParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadCharactersParamsCopyWith<$Res> {
  factory $LoadCharactersParamsCopyWith(LoadCharactersParams value,
          $Res Function(LoadCharactersParams) then) =
      _$LoadCharactersParamsCopyWithImpl<$Res, LoadCharactersParams>;
  @useResult
  $Res call(
      {int limit,
      int offset,
      String? nameLike,
      String? typeLike,
      String? speciesLike,
      CharacterStatus? status,
      CharacterGender? gender});
}

/// @nodoc
class _$LoadCharactersParamsCopyWithImpl<$Res,
        $Val extends LoadCharactersParams>
    implements $LoadCharactersParamsCopyWith<$Res> {
  _$LoadCharactersParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
    Object? nameLike = freezed,
    Object? typeLike = freezed,
    Object? speciesLike = freezed,
    Object? status = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      nameLike: freezed == nameLike
          ? _value.nameLike
          : nameLike // ignore: cast_nullable_to_non_nullable
              as String?,
      typeLike: freezed == typeLike
          ? _value.typeLike
          : typeLike // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesLike: freezed == speciesLike
          ? _value.speciesLike
          : speciesLike // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterStatus?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as CharacterGender?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadCharactersParamsCopyWith<$Res>
    implements $LoadCharactersParamsCopyWith<$Res> {
  factory _$$_LoadCharactersParamsCopyWith(_$_LoadCharactersParams value,
          $Res Function(_$_LoadCharactersParams) then) =
      __$$_LoadCharactersParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int limit,
      int offset,
      String? nameLike,
      String? typeLike,
      String? speciesLike,
      CharacterStatus? status,
      CharacterGender? gender});
}

/// @nodoc
class __$$_LoadCharactersParamsCopyWithImpl<$Res>
    extends _$LoadCharactersParamsCopyWithImpl<$Res, _$_LoadCharactersParams>
    implements _$$_LoadCharactersParamsCopyWith<$Res> {
  __$$_LoadCharactersParamsCopyWithImpl(_$_LoadCharactersParams _value,
      $Res Function(_$_LoadCharactersParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
    Object? nameLike = freezed,
    Object? typeLike = freezed,
    Object? speciesLike = freezed,
    Object? status = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$_LoadCharactersParams(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      nameLike: freezed == nameLike
          ? _value.nameLike
          : nameLike // ignore: cast_nullable_to_non_nullable
              as String?,
      typeLike: freezed == typeLike
          ? _value.typeLike
          : typeLike // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesLike: freezed == speciesLike
          ? _value.speciesLike
          : speciesLike // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterStatus?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as CharacterGender?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoadCharactersParams implements _LoadCharactersParams {
  const _$_LoadCharactersParams(
      {this.limit = 20,
      this.offset = 0,
      this.nameLike,
      this.typeLike,
      this.speciesLike,
      this.status,
      this.gender});

  factory _$_LoadCharactersParams.fromJson(Map<String, dynamic> json) =>
      _$$_LoadCharactersParamsFromJson(json);

  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int offset;
  @override
  final String? nameLike;
  @override
  final String? typeLike;
  @override
  final String? speciesLike;
  @override
  final CharacterStatus? status;
  @override
  final CharacterGender? gender;

  @override
  String toString() {
    return 'LoadCharactersParams(limit: $limit, offset: $offset, nameLike: $nameLike, typeLike: $typeLike, speciesLike: $speciesLike, status: $status, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadCharactersParams &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.nameLike, nameLike) ||
                other.nameLike == nameLike) &&
            (identical(other.typeLike, typeLike) ||
                other.typeLike == typeLike) &&
            (identical(other.speciesLike, speciesLike) ||
                other.speciesLike == speciesLike) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, limit, offset, nameLike,
      typeLike, speciesLike, status, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadCharactersParamsCopyWith<_$_LoadCharactersParams> get copyWith =>
      __$$_LoadCharactersParamsCopyWithImpl<_$_LoadCharactersParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoadCharactersParamsToJson(
      this,
    );
  }
}

abstract class _LoadCharactersParams implements LoadCharactersParams {
  const factory _LoadCharactersParams(
      {final int limit,
      final int offset,
      final String? nameLike,
      final String? typeLike,
      final String? speciesLike,
      final CharacterStatus? status,
      final CharacterGender? gender}) = _$_LoadCharactersParams;

  factory _LoadCharactersParams.fromJson(Map<String, dynamic> json) =
      _$_LoadCharactersParams.fromJson;

  @override
  int get limit;
  @override
  int get offset;
  @override
  String? get nameLike;
  @override
  String? get typeLike;
  @override
  String? get speciesLike;
  @override
  CharacterStatus? get status;
  @override
  CharacterGender? get gender;
  @override
  @JsonKey(ignore: true)
  _$$_LoadCharactersParamsCopyWith<_$_LoadCharactersParams> get copyWith =>
      throw _privateConstructorUsedError;
}
