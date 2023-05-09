// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_characters_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoadCharactersResponse _$LoadCharactersResponseFromJson(
    Map<String, dynamic> json) {
  return _LoadCharactersResponse.fromJson(json);
}

/// @nodoc
mixin _$LoadCharactersResponse {
  Map<String, dynamic> get info => throw _privateConstructorUsedError;
  List<Character> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadCharactersResponseCopyWith<LoadCharactersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadCharactersResponseCopyWith<$Res> {
  factory $LoadCharactersResponseCopyWith(LoadCharactersResponse value,
          $Res Function(LoadCharactersResponse) then) =
      _$LoadCharactersResponseCopyWithImpl<$Res, LoadCharactersResponse>;
  @useResult
  $Res call({Map<String, dynamic> info, List<Character> results});
}

/// @nodoc
class _$LoadCharactersResponseCopyWithImpl<$Res,
        $Val extends LoadCharactersResponse>
    implements $LoadCharactersResponseCopyWith<$Res> {
  _$LoadCharactersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadCharactersResponseCopyWith<$Res>
    implements $LoadCharactersResponseCopyWith<$Res> {
  factory _$$_LoadCharactersResponseCopyWith(_$_LoadCharactersResponse value,
          $Res Function(_$_LoadCharactersResponse) then) =
      __$$_LoadCharactersResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> info, List<Character> results});
}

/// @nodoc
class __$$_LoadCharactersResponseCopyWithImpl<$Res>
    extends _$LoadCharactersResponseCopyWithImpl<$Res,
        _$_LoadCharactersResponse>
    implements _$$_LoadCharactersResponseCopyWith<$Res> {
  __$$_LoadCharactersResponseCopyWithImpl(_$_LoadCharactersResponse _value,
      $Res Function(_$_LoadCharactersResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_$_LoadCharactersResponse(
      info: null == info
          ? _value._info
          : info // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_LoadCharactersResponse extends _LoadCharactersResponse {
  const _$_LoadCharactersResponse(
      {required final Map<String, dynamic> info,
      required final List<Character> results})
      : _info = info,
        _results = results,
        super._();

  factory _$_LoadCharactersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LoadCharactersResponseFromJson(json);

  final Map<String, dynamic> _info;
  @override
  Map<String, dynamic> get info {
    if (_info is EqualUnmodifiableMapView) return _info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_info);
  }

  final List<Character> _results;
  @override
  List<Character> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'LoadCharactersResponse(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadCharactersResponse &&
            const DeepCollectionEquality().equals(other._info, _info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_info),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadCharactersResponseCopyWith<_$_LoadCharactersResponse> get copyWith =>
      __$$_LoadCharactersResponseCopyWithImpl<_$_LoadCharactersResponse>(
          this, _$identity);
}

abstract class _LoadCharactersResponse extends LoadCharactersResponse {
  const factory _LoadCharactersResponse(
      {required final Map<String, dynamic> info,
      required final List<Character> results}) = _$_LoadCharactersResponse;
  const _LoadCharactersResponse._() : super._();

  factory _LoadCharactersResponse.fromJson(Map<String, dynamic> json) =
      _$_LoadCharactersResponse.fromJson;

  @override
  Map<String, dynamic> get info;
  @override
  List<Character> get results;
  @override
  @JsonKey(ignore: true)
  _$$_LoadCharactersResponseCopyWith<_$_LoadCharactersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
