// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteTrip _$FavoriteTripFromJson(Map<String, dynamic> json) {
  return _FavoriteTrip.fromJson(json);
}

/// @nodoc
mixin _$FavoriteTrip {
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
  Trip? get favorable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteTripCopyWith<FavoriteTrip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteTripCopyWith<$Res> {
  factory $FavoriteTripCopyWith(
          FavoriteTrip value, $Res Function(FavoriteTrip) then) =
      _$FavoriteTripCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "favorable_type") String? favorableType,
      @JsonKey(name: "favorable_id") String? favorableId,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "deleted_at") DateTime? deletedAt,
      Trip? favorable});

  $TripCopyWith<$Res>? get favorable;
}

/// @nodoc
class _$FavoriteTripCopyWithImpl<$Res> implements $FavoriteTripCopyWith<$Res> {
  _$FavoriteTripCopyWithImpl(this._value, this._then);

  final FavoriteTrip _value;
  // ignore: unused_field
  final $Res Function(FavoriteTrip) _then;

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
              as Trip?,
    ));
  }

  @override
  $TripCopyWith<$Res>? get favorable {
    if (_value.favorable == null) {
      return null;
    }

    return $TripCopyWith<$Res>(_value.favorable!, (value) {
      return _then(_value.copyWith(favorable: value));
    });
  }
}

/// @nodoc
abstract class _$$_FavoriteTripCopyWith<$Res>
    implements $FavoriteTripCopyWith<$Res> {
  factory _$$_FavoriteTripCopyWith(
          _$_FavoriteTrip value, $Res Function(_$_FavoriteTrip) then) =
      __$$_FavoriteTripCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "favorable_type") String? favorableType,
      @JsonKey(name: "favorable_id") String? favorableId,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "deleted_at") DateTime? deletedAt,
      Trip? favorable});

  @override
  $TripCopyWith<$Res>? get favorable;
}

/// @nodoc
class __$$_FavoriteTripCopyWithImpl<$Res>
    extends _$FavoriteTripCopyWithImpl<$Res>
    implements _$$_FavoriteTripCopyWith<$Res> {
  __$$_FavoriteTripCopyWithImpl(
      _$_FavoriteTrip _value, $Res Function(_$_FavoriteTrip) _then)
      : super(_value, (v) => _then(v as _$_FavoriteTrip));

  @override
  _$_FavoriteTrip get _value => super._value as _$_FavoriteTrip;

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
    return _then(_$_FavoriteTrip(
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
              as Trip?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteTrip implements _FavoriteTrip {
  const _$_FavoriteTrip(
      {this.id,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "favorable_type") this.favorableType,
      @JsonKey(name: "favorable_id") this.favorableId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "deleted_at") this.deletedAt,
      this.favorable});

  factory _$_FavoriteTrip.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteTripFromJson(json);

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
  final Trip? favorable;

  @override
  String toString() {
    return 'FavoriteTrip(id: $id, userId: $userId, favorableType: $favorableType, favorableId: $favorableId, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, favorable: $favorable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteTrip &&
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
  _$$_FavoriteTripCopyWith<_$_FavoriteTrip> get copyWith =>
      __$$_FavoriteTripCopyWithImpl<_$_FavoriteTrip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteTripToJson(
      this,
    );
  }
}

abstract class _FavoriteTrip implements FavoriteTrip {
  const factory _FavoriteTrip(
      {final String? id,
      @JsonKey(name: "user_id") final String? userId,
      @JsonKey(name: "favorable_type") final String? favorableType,
      @JsonKey(name: "favorable_id") final String? favorableId,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt,
      @JsonKey(name: "deleted_at") final DateTime? deletedAt,
      final Trip? favorable}) = _$_FavoriteTrip;

  factory _FavoriteTrip.fromJson(Map<String, dynamic> json) =
      _$_FavoriteTrip.fromJson;

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
  Trip? get favorable;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteTripCopyWith<_$_FavoriteTrip> get copyWith =>
      throw _privateConstructorUsedError;
}
