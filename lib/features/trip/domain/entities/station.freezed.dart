// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Station _$StationFromJson(Map<String, dynamic> json) {
  return _Station.fromJson(json);
}

/// @nodoc
mixin _$Station {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'journey_id')
  String? get journeyId => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'journey_places')
  List<JourneyPlace>? get journeyPlaces => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StationCopyWith<Station> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationCopyWith<$Res> {
  factory $StationCopyWith(Station value, $Res Function(Station) then) =
      _$StationCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'journey_id') String? journeyId,
      int? order,
      String? name,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'journey_places') List<JourneyPlace>? journeyPlaces});
}

/// @nodoc
class _$StationCopyWithImpl<$Res> implements $StationCopyWith<$Res> {
  _$StationCopyWithImpl(this._value, this._then);

  final Station _value;
  // ignore: unused_field
  final $Res Function(Station) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? journeyId = freezed,
    Object? order = freezed,
    Object? name = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? journeyPlaces = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      journeyId: journeyId == freezed
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      journeyPlaces: journeyPlaces == freezed
          ? _value.journeyPlaces
          : journeyPlaces // ignore: cast_nullable_to_non_nullable
              as List<JourneyPlace>?,
    ));
  }
}

/// @nodoc
abstract class _$$_StationCopyWith<$Res> implements $StationCopyWith<$Res> {
  factory _$$_StationCopyWith(
          _$_Station value, $Res Function(_$_Station) then) =
      __$$_StationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'journey_id') String? journeyId,
      int? order,
      String? name,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'journey_places') List<JourneyPlace>? journeyPlaces});
}

/// @nodoc
class __$$_StationCopyWithImpl<$Res> extends _$StationCopyWithImpl<$Res>
    implements _$$_StationCopyWith<$Res> {
  __$$_StationCopyWithImpl(_$_Station _value, $Res Function(_$_Station) _then)
      : super(_value, (v) => _then(v as _$_Station));

  @override
  _$_Station get _value => super._value as _$_Station;

  @override
  $Res call({
    Object? id = freezed,
    Object? journeyId = freezed,
    Object? order = freezed,
    Object? name = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? journeyPlaces = freezed,
  }) {
    return _then(_$_Station(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      journeyId: journeyId == freezed
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      journeyPlaces: journeyPlaces == freezed
          ? _value._journeyPlaces
          : journeyPlaces // ignore: cast_nullable_to_non_nullable
              as List<JourneyPlace>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Station implements _Station {
  const _$_Station(
      {this.id,
      @JsonKey(name: 'journey_id') this.journeyId,
      this.order,
      this.name,
      @JsonKey(name: 'started_at') this.startedAt,
      @JsonKey(name: 'ended_at') this.endedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'journey_places') final List<JourneyPlace>? journeyPlaces})
      : _journeyPlaces = journeyPlaces;

  factory _$_Station.fromJson(Map<String, dynamic> json) =>
      _$$_StationFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'journey_id')
  final String? journeyId;
  @override
  final int? order;
  @override
  final String? name;
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
  final List<JourneyPlace>? _journeyPlaces;
  @override
  @JsonKey(name: 'journey_places')
  List<JourneyPlace>? get journeyPlaces {
    final value = _journeyPlaces;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Station(id: $id, journeyId: $journeyId, order: $order, name: $name, startedAt: $startedAt, endedAt: $endedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, journeyPlaces: $journeyPlaces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Station &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.journeyId, journeyId) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality().equals(other.endedAt, endedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality()
                .equals(other._journeyPlaces, _journeyPlaces));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(journeyId),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(startedAt),
      const DeepCollectionEquality().hash(endedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(_journeyPlaces));

  @JsonKey(ignore: true)
  @override
  _$$_StationCopyWith<_$_Station> get copyWith =>
      __$$_StationCopyWithImpl<_$_Station>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StationToJson(
      this,
    );
  }
}

abstract class _Station implements Station {
  const factory _Station(
      {final String? id,
      @JsonKey(name: 'journey_id')
          final String? journeyId,
      final int? order,
      final String? name,
      @JsonKey(name: 'started_at')
          final DateTime? startedAt,
      @JsonKey(name: 'ended_at')
          final DateTime? endedAt,
      @JsonKey(name: 'created_at')
          final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          final DateTime? updatedAt,
      @JsonKey(name: 'deleted_at')
          final DateTime? deletedAt,
      @JsonKey(name: 'journey_places')
          final List<JourneyPlace>? journeyPlaces}) = _$_Station;

  factory _Station.fromJson(Map<String, dynamic> json) = _$_Station.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'journey_id')
  String? get journeyId;
  @override
  int? get order;
  @override
  String? get name;
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
  @JsonKey(name: 'journey_places')
  List<JourneyPlace>? get journeyPlaces;
  @override
  @JsonKey(ignore: true)
  _$$_StationCopyWith<_$_Station> get copyWith =>
      throw _privateConstructorUsedError;
}
