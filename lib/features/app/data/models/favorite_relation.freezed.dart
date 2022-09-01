// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_relation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteRelation _$FavoriteRelationFromJson(Map<String, dynamic> json) {
  return _FavoriteRelation.fromJson(json);
}

/// @nodoc
mixin _$FavoriteRelation {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get favorableType => throw _privateConstructorUsedError;
  String? get favorableId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteRelationCopyWith<FavoriteRelation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteRelationCopyWith<$Res> {
  factory $FavoriteRelationCopyWith(
          FavoriteRelation value, $Res Function(FavoriteRelation) then) =
      _$FavoriteRelationCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? userId,
      String? favorableType,
      String? favorableId,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class _$FavoriteRelationCopyWithImpl<$Res>
    implements $FavoriteRelationCopyWith<$Res> {
  _$FavoriteRelationCopyWithImpl(this._value, this._then);

  final FavoriteRelation _value;
  // ignore: unused_field
  final $Res Function(FavoriteRelation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? favorableType = freezed,
    Object? favorableId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      favorableType: favorableType == freezed
          ? _value.favorableType
          : favorableType // ignore: cast_nullable_to_non_nullable
              as String?,
      favorableId: favorableId == freezed
          ? _value.favorableId
          : favorableId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_FavoriteRelationCopyWith<$Res>
    implements $FavoriteRelationCopyWith<$Res> {
  factory _$$_FavoriteRelationCopyWith(
          _$_FavoriteRelation value, $Res Function(_$_FavoriteRelation) then) =
      __$$_FavoriteRelationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? userId,
      String? favorableType,
      String? favorableId,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$$_FavoriteRelationCopyWithImpl<$Res>
    extends _$FavoriteRelationCopyWithImpl<$Res>
    implements _$$_FavoriteRelationCopyWith<$Res> {
  __$$_FavoriteRelationCopyWithImpl(
      _$_FavoriteRelation _value, $Res Function(_$_FavoriteRelation) _then)
      : super(_value, (v) => _then(v as _$_FavoriteRelation));

  @override
  _$_FavoriteRelation get _value => super._value as _$_FavoriteRelation;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? favorableType = freezed,
    Object? favorableId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_FavoriteRelation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      favorableType: favorableType == freezed
          ? _value.favorableType
          : favorableType // ignore: cast_nullable_to_non_nullable
              as String?,
      favorableId: favorableId == freezed
          ? _value.favorableId
          : favorableId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteRelation implements _FavoriteRelation {
  const _$_FavoriteRelation(
      {this.id,
      this.userId,
      this.favorableType,
      this.favorableId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  factory _$_FavoriteRelation.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteRelationFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? favorableType;
  @override
  final String? favorableId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'FavoriteRelation(id: $id, userId: $userId, favorableType: $favorableType, favorableId: $favorableId, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteRelation &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.favorableType, favorableType) &&
            const DeepCollectionEquality()
                .equals(other.favorableId, favorableId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(favorableType),
      const DeepCollectionEquality().hash(favorableId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$$_FavoriteRelationCopyWith<_$_FavoriteRelation> get copyWith =>
      __$$_FavoriteRelationCopyWithImpl<_$_FavoriteRelation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteRelationToJson(
      this,
    );
  }
}

abstract class _FavoriteRelation implements FavoriteRelation {
  const factory _FavoriteRelation(
      {final String? id,
      final String? userId,
      final String? favorableType,
      final String? favorableId,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? deletedAt}) = _$_FavoriteRelation;

  factory _FavoriteRelation.fromJson(Map<String, dynamic> json) =
      _$_FavoriteRelation.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get favorableType;
  @override
  String? get favorableId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteRelationCopyWith<_$_FavoriteRelation> get copyWith =>
      throw _privateConstructorUsedError;
}
