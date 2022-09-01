// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorable_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavorableTrip _$FavorableTripFromJson(Map<String, dynamic> json) {
  return _FavorableTrip.fromJson(json);
}

/// @nodoc
mixin _$FavorableTrip {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "journey_category_id")
  String? get journeyCategoryId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get max => throw _privateConstructorUsedError;
  @JsonKey(name: "number_of_days")
  int? get numberOfDays => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  bool? get done => throw _privateConstructorUsedError;
  int? get cost => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "started_at")
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "ended_at")
  DateTime? get endedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "deleted_at")
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavorableTripCopyWith<FavorableTrip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavorableTripCopyWith<$Res> {
  factory $FavorableTripCopyWith(
          FavorableTrip value, $Res Function(FavorableTrip) then) =
      _$FavorableTripCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: "journey_category_id") String? journeyCategoryId,
      String? name,
      String? description,
      int? max,
      @JsonKey(name: "number_of_days") int? numberOfDays,
      String? note,
      bool? done,
      int? cost,
      String? type,
      String? status,
      @JsonKey(name: "started_at") DateTime? startedAt,
      @JsonKey(name: "ended_at") DateTime? endedAt,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "deleted_at") DateTime? deletedAt});
}

/// @nodoc
class _$FavorableTripCopyWithImpl<$Res>
    implements $FavorableTripCopyWith<$Res> {
  _$FavorableTripCopyWithImpl(this._value, this._then);

  final FavorableTrip _value;
  // ignore: unused_field
  final $Res Function(FavorableTrip) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? journeyCategoryId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? max = freezed,
    Object? numberOfDays = freezed,
    Object? note = freezed,
    Object? done = freezed,
    Object? cost = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      journeyCategoryId: journeyCategoryId == freezed
          ? _value.journeyCategoryId
          : journeyCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfDays: numberOfDays == freezed
          ? _value.numberOfDays
          : numberOfDays // ignore: cast_nullable_to_non_nullable
              as int?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
abstract class _$$_FavorableTripCopyWith<$Res>
    implements $FavorableTripCopyWith<$Res> {
  factory _$$_FavorableTripCopyWith(
          _$_FavorableTrip value, $Res Function(_$_FavorableTrip) then) =
      __$$_FavorableTripCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: "journey_category_id") String? journeyCategoryId,
      String? name,
      String? description,
      int? max,
      @JsonKey(name: "number_of_days") int? numberOfDays,
      String? note,
      bool? done,
      int? cost,
      String? type,
      String? status,
      @JsonKey(name: "started_at") DateTime? startedAt,
      @JsonKey(name: "ended_at") DateTime? endedAt,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "deleted_at") DateTime? deletedAt});
}

/// @nodoc
class __$$_FavorableTripCopyWithImpl<$Res>
    extends _$FavorableTripCopyWithImpl<$Res>
    implements _$$_FavorableTripCopyWith<$Res> {
  __$$_FavorableTripCopyWithImpl(
      _$_FavorableTrip _value, $Res Function(_$_FavorableTrip) _then)
      : super(_value, (v) => _then(v as _$_FavorableTrip));

  @override
  _$_FavorableTrip get _value => super._value as _$_FavorableTrip;

  @override
  $Res call({
    Object? id = freezed,
    Object? journeyCategoryId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? max = freezed,
    Object? numberOfDays = freezed,
    Object? note = freezed,
    Object? done = freezed,
    Object? cost = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_FavorableTrip(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      journeyCategoryId: journeyCategoryId == freezed
          ? _value.journeyCategoryId
          : journeyCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfDays: numberOfDays == freezed
          ? _value.numberOfDays
          : numberOfDays // ignore: cast_nullable_to_non_nullable
              as int?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavorableTrip implements _FavorableTrip {
  const _$_FavorableTrip(
      {this.id,
      @JsonKey(name: "journey_category_id") this.journeyCategoryId,
      this.name,
      this.description,
      this.max,
      @JsonKey(name: "number_of_days") this.numberOfDays,
      this.note,
      this.done,
      this.cost,
      this.type,
      this.status,
      @JsonKey(name: "started_at") this.startedAt,
      @JsonKey(name: "ended_at") this.endedAt,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "deleted_at") this.deletedAt});

  factory _$_FavorableTrip.fromJson(Map<String, dynamic> json) =>
      _$$_FavorableTripFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: "journey_category_id")
  final String? journeyCategoryId;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? max;
  @override
  @JsonKey(name: "number_of_days")
  final int? numberOfDays;
  @override
  final String? note;
  @override
  final bool? done;
  @override
  final int? cost;
  @override
  final String? type;
  @override
  final String? status;
  @override
  @JsonKey(name: "started_at")
  final DateTime? startedAt;
  @override
  @JsonKey(name: "ended_at")
  final DateTime? endedAt;
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
  String toString() {
    return 'FavorableTrip(id: $id, journeyCategoryId: $journeyCategoryId, name: $name, description: $description, max: $max, numberOfDays: $numberOfDays, note: $note, done: $done, cost: $cost, type: $type, status: $status, startedAt: $startedAt, endedAt: $endedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavorableTrip &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.journeyCategoryId, journeyCategoryId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.max, max) &&
            const DeepCollectionEquality()
                .equals(other.numberOfDays, numberOfDays) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.done, done) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality().equals(other.endedAt, endedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(journeyCategoryId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(max),
      const DeepCollectionEquality().hash(numberOfDays),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(done),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(startedAt),
      const DeepCollectionEquality().hash(endedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$$_FavorableTripCopyWith<_$_FavorableTrip> get copyWith =>
      __$$_FavorableTripCopyWithImpl<_$_FavorableTrip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavorableTripToJson(
      this,
    );
  }
}

abstract class _FavorableTrip implements FavorableTrip {
  const factory _FavorableTrip(
          {final String? id,
          @JsonKey(name: "journey_category_id") final String? journeyCategoryId,
          final String? name,
          final String? description,
          final int? max,
          @JsonKey(name: "number_of_days") final int? numberOfDays,
          final String? note,
          final bool? done,
          final int? cost,
          final String? type,
          final String? status,
          @JsonKey(name: "started_at") final DateTime? startedAt,
          @JsonKey(name: "ended_at") final DateTime? endedAt,
          @JsonKey(name: "created_at") final DateTime? createdAt,
          @JsonKey(name: "updated_at") final DateTime? updatedAt,
          @JsonKey(name: "deleted_at") final DateTime? deletedAt}) =
      _$_FavorableTrip;

  factory _FavorableTrip.fromJson(Map<String, dynamic> json) =
      _$_FavorableTrip.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: "journey_category_id")
  String? get journeyCategoryId;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get max;
  @override
  @JsonKey(name: "number_of_days")
  int? get numberOfDays;
  @override
  String? get note;
  @override
  bool? get done;
  @override
  int? get cost;
  @override
  String? get type;
  @override
  String? get status;
  @override
  @JsonKey(name: "started_at")
  DateTime? get startedAt;
  @override
  @JsonKey(name: "ended_at")
  DateTime? get endedAt;
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
  @JsonKey(ignore: true)
  _$$_FavorableTripCopyWith<_$_FavorableTrip> get copyWith =>
      throw _privateConstructorUsedError;
}
