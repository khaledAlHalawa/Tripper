// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'journy_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JourneyPlace _$JourneyPlaceFromJson(Map<String, dynamic> json) {
  return _JourneyPlace.fromJson(json);
}

/// @nodoc
mixin _$JourneyPlace {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'journey_station_id')
  String? get journeyStationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
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
  PlaceTrip? get place => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JourneyPlaceCopyWith<JourneyPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneyPlaceCopyWith<$Res> {
  factory $JourneyPlaceCopyWith(
          JourneyPlace value, $Res Function(JourneyPlace) then) =
      _$JourneyPlaceCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'journey_station_id') String? journeyStationId,
      @JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      PlaceTrip? place});

  $PlaceTripCopyWith<$Res>? get place;
}

/// @nodoc
class _$JourneyPlaceCopyWithImpl<$Res> implements $JourneyPlaceCopyWith<$Res> {
  _$JourneyPlaceCopyWithImpl(this._value, this._then);

  final JourneyPlace _value;
  // ignore: unused_field
  final $Res Function(JourneyPlace) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? journeyStationId = freezed,
    Object? placeId = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? place = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      journeyStationId: journeyStationId == freezed
          ? _value.journeyStationId
          : journeyStationId // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceTrip?,
    ));
  }

  @override
  $PlaceTripCopyWith<$Res>? get place {
    if (_value.place == null) {
      return null;
    }

    return $PlaceTripCopyWith<$Res>(_value.place!, (value) {
      return _then(_value.copyWith(place: value));
    });
  }
}

/// @nodoc
abstract class _$$_JourneyPlaceCopyWith<$Res>
    implements $JourneyPlaceCopyWith<$Res> {
  factory _$$_JourneyPlaceCopyWith(
          _$_JourneyPlace value, $Res Function(_$_JourneyPlace) then) =
      __$$_JourneyPlaceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'journey_station_id') String? journeyStationId,
      @JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      PlaceTrip? place});

  @override
  $PlaceTripCopyWith<$Res>? get place;
}

/// @nodoc
class __$$_JourneyPlaceCopyWithImpl<$Res>
    extends _$JourneyPlaceCopyWithImpl<$Res>
    implements _$$_JourneyPlaceCopyWith<$Res> {
  __$$_JourneyPlaceCopyWithImpl(
      _$_JourneyPlace _value, $Res Function(_$_JourneyPlace) _then)
      : super(_value, (v) => _then(v as _$_JourneyPlace));

  @override
  _$_JourneyPlace get _value => super._value as _$_JourneyPlace;

  @override
  $Res call({
    Object? id = freezed,
    Object? journeyStationId = freezed,
    Object? placeId = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? place = freezed,
  }) {
    return _then(_$_JourneyPlace(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      journeyStationId: journeyStationId == freezed
          ? _value.journeyStationId
          : journeyStationId // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceTrip?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JourneyPlace implements _JourneyPlace {
  const _$_JourneyPlace(
      {this.id,
      @JsonKey(name: 'journey_station_id') this.journeyStationId,
      @JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'started_at') this.startedAt,
      @JsonKey(name: 'ended_at') this.endedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      this.place});

  factory _$_JourneyPlace.fromJson(Map<String, dynamic> json) =>
      _$$_JourneyPlaceFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'journey_station_id')
  final String? journeyStationId;
  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
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
  final PlaceTrip? place;

  @override
  String toString() {
    return 'JourneyPlace(id: $id, journeyStationId: $journeyStationId, placeId: $placeId, startedAt: $startedAt, endedAt: $endedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JourneyPlace &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.journeyStationId, journeyStationId) &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality().equals(other.endedAt, endedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.place, place));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(journeyStationId),
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(startedAt),
      const DeepCollectionEquality().hash(endedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(place));

  @JsonKey(ignore: true)
  @override
  _$$_JourneyPlaceCopyWith<_$_JourneyPlace> get copyWith =>
      __$$_JourneyPlaceCopyWithImpl<_$_JourneyPlace>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JourneyPlaceToJson(
      this,
    );
  }
}

abstract class _JourneyPlace implements JourneyPlace {
  const factory _JourneyPlace(
      {final String? id,
      @JsonKey(name: 'journey_station_id') final String? journeyStationId,
      @JsonKey(name: 'place_id') final String? placeId,
      @JsonKey(name: 'started_at') final DateTime? startedAt,
      @JsonKey(name: 'ended_at') final DateTime? endedAt,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') final DateTime? deletedAt,
      final PlaceTrip? place}) = _$_JourneyPlace;

  factory _JourneyPlace.fromJson(Map<String, dynamic> json) =
      _$_JourneyPlace.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'journey_station_id')
  String? get journeyStationId;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
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
  PlaceTrip? get place;
  @override
  @JsonKey(ignore: true)
  _$$_JourneyPlaceCopyWith<_$_JourneyPlace> get copyWith =>
      throw _privateConstructorUsedError;
}
