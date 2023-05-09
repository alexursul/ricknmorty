// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_character.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFavoriteCharacterCollection on Isar {
  IsarCollection<FavoriteCharacter> get favoriteCharacters => this.collection();
}

const FavoriteCharacterSchema = CollectionSchema(
  name: r'FavoriteCharacter',
  id: 3321196451907247176,
  properties: {},
  estimateSize: _favoriteCharacterEstimateSize,
  serialize: _favoriteCharacterSerialize,
  deserialize: _favoriteCharacterDeserialize,
  deserializeProp: _favoriteCharacterDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _favoriteCharacterGetId,
  getLinks: _favoriteCharacterGetLinks,
  attach: _favoriteCharacterAttach,
  version: '3.1.0+1',
);

int _favoriteCharacterEstimateSize(
  FavoriteCharacter object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _favoriteCharacterSerialize(
  FavoriteCharacter object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
FavoriteCharacter _favoriteCharacterDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FavoriteCharacter(
    id: id,
  );
  return object;
}

P _favoriteCharacterDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _favoriteCharacterGetId(FavoriteCharacter object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _favoriteCharacterGetLinks(
    FavoriteCharacter object) {
  return [];
}

void _favoriteCharacterAttach(
    IsarCollection<dynamic> col, Id id, FavoriteCharacter object) {}

extension FavoriteCharacterQueryWhereSort
    on QueryBuilder<FavoriteCharacter, FavoriteCharacter, QWhere> {
  QueryBuilder<FavoriteCharacter, FavoriteCharacter, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FavoriteCharacterQueryWhere
    on QueryBuilder<FavoriteCharacter, FavoriteCharacter, QWhereClause> {
  QueryBuilder<FavoriteCharacter, FavoriteCharacter, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FavoriteCharacter, FavoriteCharacter, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<FavoriteCharacter, FavoriteCharacter, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FavoriteCharacter, FavoriteCharacter, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FavoriteCharacter, FavoriteCharacter, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FavoriteCharacterQueryFilter
    on QueryBuilder<FavoriteCharacter, FavoriteCharacter, QFilterCondition> {
  QueryBuilder<FavoriteCharacter, FavoriteCharacter, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoriteCharacter, FavoriteCharacter, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoriteCharacter, FavoriteCharacter, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoriteCharacter, FavoriteCharacter, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FavoriteCharacterQueryObject
    on QueryBuilder<FavoriteCharacter, FavoriteCharacter, QFilterCondition> {}

extension FavoriteCharacterQueryLinks
    on QueryBuilder<FavoriteCharacter, FavoriteCharacter, QFilterCondition> {}

extension FavoriteCharacterQuerySortBy
    on QueryBuilder<FavoriteCharacter, FavoriteCharacter, QSortBy> {}

extension FavoriteCharacterQuerySortThenBy
    on QueryBuilder<FavoriteCharacter, FavoriteCharacter, QSortThenBy> {
  QueryBuilder<FavoriteCharacter, FavoriteCharacter, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FavoriteCharacter, FavoriteCharacter, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension FavoriteCharacterQueryWhereDistinct
    on QueryBuilder<FavoriteCharacter, FavoriteCharacter, QDistinct> {}

extension FavoriteCharacterQueryProperty
    on QueryBuilder<FavoriteCharacter, FavoriteCharacter, QQueryProperty> {
  QueryBuilder<FavoriteCharacter, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}
