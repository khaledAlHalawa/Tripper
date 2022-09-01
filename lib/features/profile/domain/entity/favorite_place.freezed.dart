// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoritePlace _$FavoritePlaceFromJson(Map<String, dynamic> json) {
  return _FavoritePlace.fromJson(json);
}

/// @nodoc
mixin _$FavoritePlace {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "favorable_type")
  String? get favorableType => throw _privateConstructorUsedError;
  @JsonKey(name: "favorable_id")
  String? get favorableId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "deleted_at")
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  Place? get favorable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritePlaceCopyWith<FavoritePlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePlaceCopyWith<$Res> {
  factory $FavoritePlaceCopyWith(
          FavoritePlace value, $Res Function(FavoritePlace) then) =
      _$FavoritePlaceCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "favorable_type") String? favorableType,
      @JsonKey(name: "favorable_id") String? favorableId,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "deleted_at") DateTime? deletedAt,
      Place? favorable});

  $PlaceCopyWith<$Res>? get favorable;
}

/// @nodoc
class _$FavoritePlaceCopyWithImpl<$Res>
    implements $FavoritePlaceCopyWith<$Res> {
  _$FavoritePlaceCopyWithImpl(this._value, this._then);

  final FavoritePlace _value;
  // ignore: unused_field
  final $Res Function(FavoritePlace) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? favorableType = freezed,
    Object? favorableId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? favorable = freezed,
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
      favorable: favorable == freezed
          ? _value.favorable
          : favorable // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }

  @override
  $PlaceCopyWith<$Res>? get favorable {
    if (_value.favorable == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.favorable!, (value) {
      return _then(_value.copyWith(favorable: value));
    });
  }
}

/// @nodoc
abstract class _$$_FavoritePlaceCopyWith<$Res>
    implements $FavoritePlaceCopyWith<$Res> {
  factory _$$_FavoritePlaceCopyWith(
          _$_FavoritePlace value, $Res Function(_$_FavoritePlace) then) =
      __$$_FavoritePlaceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "favorable_type") String? favorableType,
      @JsonKey(name: "favorable_id") String? favorableId,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "deleted_at") DateTime? deletedAt,
      Place? favorable});

  @override
  $PlaceCopyWith<$Res>? get favorable;
}

/// @nodoc
class __$$_FavoritePlaceCopyWithImpl<$Res>
    extends _$FavoritePlaceCopyWithImpl<$Res>
    implements _$$_FavoritePlaceCopyWith<$Res> {
  __$$_FavoritePlaceCopyWithImpl(
      _$_FavoritePlace _value, $Res Function(_$_FavoritePlace) _then)
      : super(_value, (v) => _then(v as _$_FavoritePlace));

  @override
  _$_FavoritePlace get _value => super._value as _$_FavoritePlace;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? favorableType = freezed,
    Object? favorableId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? favorable = freezed,
  }) {
    return _then(_$_FavoritePlace(
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
      favorable: favorable == freezed
          ? _value.favorable
          : favorable // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoritePlace implements _FavoritePlace {
  const _$_FavoritePlace(
      {this.id,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "favorable_type") this.favorableType,
      @JsonKey(name: "favorable_id") this.favorableId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "deleted_at") this.deletedAt,
      this.favorable});

  factory _$_FavoritePlace.fromJson(Map<String, dynamic> json) =>
      _$$_FavoritePlaceFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "favorable_type")
  final String? favorableType;
  @override
  @JsonKey(name: "favorable_id")
  final String? favorableId;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "deleted_at")
  final DateTime? deletedAt;
  @override
  final Place? favorable;

  @override
  String toString() {
    return 'FavoritePlace(id: $id, userId: $userId, favorableType: $favorableType, favorableId: $favorableId, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, favorable: $favorable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoritePlace &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.favorableType, favorableType) &&
            const DeepCollectionEquality()
                .equals(other.favorableId, favorableId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.favorable, favorable));
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
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(favorable));

  @JsonKey(ignore: true)
  @override
  _$$_FavoritePlaceCopyWith<_$_FavoritePlace> get copyWith =>
      __$$_FavoritePlaceCopyWithImpl<_$_FavoritePlace>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoritePlaceToJson(
      this,
    );
  }
}

abstract class _FavoritePlace implements FavoritePlace {
  const factory _FavoritePlace(
      {final String? id,
      @JsonKey(name: "user_id") final String? userId,
      @JsonKey(name: "favorable_type") final String? favorableType,
      @JsonKey(name: "favorable_id") final String? favorableId,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt,
      @JsonKey(name: "deleted_at") final DateTime? deletedAt,
      final Place? favorable}) = _$_FavoritePlace;

  factory _FavoritePlace.fromJson(Map<String, dynamic> json) =
      _$_FavoritePlace.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "favorable_type")
  String? get favorableType;
  @override
  @JsonKey(name: "favorable_id")
  String? get favorableId;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "deleted_at")
  DateTime? get deletedAt;
  @override
  Place? get favorable;
  @override
  @JsonKey(ignore: true)
  _$$_FavoritePlaceCopyWith<_$_FavoritePlace> get copyWith =>
      throw _privateConstructorUsedError;
}
