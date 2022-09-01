// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceTrip _$PlaceTripFromJson(Map<String, dynamic> json) {
  return _PlaceTrip.fromJson(json);
}

/// @nodoc
mixin _$PlaceTrip {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "place_type_id")
  String? get placeTypeId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  List<Review>? get reviews => throw _privateConstructorUsedError;
  List<Media>? get media => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceTripCopyWith<PlaceTrip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceTripCopyWith<$Res> {
  factory $PlaceTripCopyWith(PlaceTrip value, $Res Function(PlaceTrip) then) =
      _$PlaceTripCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "place_type_id") String? placeTypeId,
      String? name,
      String? description,
      int? price,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      Address? address,
      List<Review>? reviews,
      List<Media>? media});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$PlaceTripCopyWithImpl<$Res> implements $PlaceTripCopyWith<$Res> {
  _$PlaceTripCopyWithImpl(this._value, this._then);

  final PlaceTrip _value;
  // ignore: unused_field
  final $Res Function(PlaceTrip) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? placeTypeId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? address = freezed,
    Object? reviews = freezed,
    Object? media = freezed,
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
      placeTypeId: placeTypeId == freezed
          ? _value.placeTypeId
          : placeTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: endedAt == freezed
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
    ));
  }

  @override
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$$_PlaceTripCopyWith<$Res> implements $PlaceTripCopyWith<$Res> {
  factory _$$_PlaceTripCopyWith(
          _$_PlaceTrip value, $Res Function(_$_PlaceTrip) then) =
      __$$_PlaceTripCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "place_type_id") String? placeTypeId,
      String? name,
      String? description,
      int? price,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      Address? address,
      List<Review>? reviews,
      List<Media>? media});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_PlaceTripCopyWithImpl<$Res> extends _$PlaceTripCopyWithImpl<$Res>
    implements _$$_PlaceTripCopyWith<$Res> {
  __$$_PlaceTripCopyWithImpl(
      _$_PlaceTrip _value, $Res Function(_$_PlaceTrip) _then)
      : super(_value, (v) => _then(v as _$_PlaceTrip));

  @override
  _$_PlaceTrip get _value => super._value as _$_PlaceTrip;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? placeTypeId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? address = freezed,
    Object? reviews = freezed,
    Object? media = freezed,
  }) {
    return _then(_$_PlaceTrip(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      placeTypeId: placeTypeId == freezed
          ? _value.placeTypeId
          : placeTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: endedAt == freezed
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      reviews: reviews == freezed
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      media: media == freezed
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceTrip implements _PlaceTrip {
  const _$_PlaceTrip(
      {this.id,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "place_type_id") this.placeTypeId,
      this.name,
      this.description,
      this.price,
      @JsonKey(name: 'started_at') this.startedAt,
      @JsonKey(name: 'ended_at') this.endedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      this.address,
      final List<Review>? reviews,
      final List<Media>? media})
      : _reviews = reviews,
        _media = media;

  factory _$_PlaceTrip.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceTripFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "place_type_id")
  final String? placeTypeId;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? price;
  @override
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @override
  @JsonKey(name: 'ended_at')
  final DateTime? endedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;
  @override
  final Address? address;
  final List<Review>? _reviews;
  @override
  List<Review>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Media>? _media;
  @override
  List<Media>? get media {
    final value = _media;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlaceTrip(id: $id, userId: $userId, placeTypeId: $placeTypeId, name: $name, description: $description, price: $price, startedAt: $startedAt, endedAt: $endedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, address: $address, reviews: $reviews, media: $media)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceTrip &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.placeTypeId, placeTypeId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality().equals(other.endedAt, endedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(placeTypeId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(startedAt),
      const DeepCollectionEquality().hash(endedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(_reviews),
      const DeepCollectionEquality().hash(_media));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceTripCopyWith<_$_PlaceTrip> get copyWith =>
      __$$_PlaceTripCopyWithImpl<_$_PlaceTrip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceTripToJson(
      this,
    );
  }
}

abstract class _PlaceTrip implements PlaceTrip {
  const factory _PlaceTrip(
      {final String? id,
      @JsonKey(name: "user_id") final String? userId,
      @JsonKey(name: "place_type_id") final String? placeTypeId,
      final String? name,
      final String? description,
      final int? price,
      @JsonKey(name: 'started_at') final DateTime? startedAt,
      @JsonKey(name: 'ended_at') final DateTime? endedAt,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') final DateTime? deletedAt,
      final Address? address,
      final List<Review>? reviews,
      final List<Media>? media}) = _$_PlaceTrip;

  factory _PlaceTrip.fromJson(Map<String, dynamic> json) =
      _$_PlaceTrip.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "place_type_id")
  String? get placeTypeId;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get price;
  @override
  @JsonKey(name: 'started_at')
  DateTime? get startedAt;
  @override
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt;
  @override
  Address? get address;
  @override
  List<Review>? get reviews;
  @override
  List<Media>? get media;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceTripCopyWith<_$_PlaceTrip> get copyWith =>
      throw _privateConstructorUsedError;
}
