// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trip _$TripFromJson(Map<String, dynamic> json) {
  return _Trip.fromJson(json);
}

/// @nodoc
mixin _$Trip {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get max => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_days')
  int? get numberOfDays => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get cost => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  int? get review => throw _privateConstructorUsedError;
  List<Review>? get reviews => throw _privateConstructorUsedError;
  int? get favorites => throw _privateConstructorUsedError;
  List<Station>? get stations => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites_relation')
  List<FavoriteRelation>? get favoritesRelation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? description,
      int? max,
      @JsonKey(name: 'number_of_days')
          int? numberOfDays,
      String? type,
      int? cost,
      String? status,
      @JsonKey(name: 'started_at')
          DateTime? startedAt,
      @JsonKey(name: 'ended_at')
          DateTime? endedAt,
      String? category,
      int? review,
      List<Review>? reviews,
      int? favorites,
      List<Station>? stations,
      @JsonKey(name: 'favorites_relation')
          List<FavoriteRelation>? favoritesRelation});
}

/// @nodoc
class _$TripCopyWithImpl<$Res> implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  final Trip _value;
  // ignore: unused_field
  final $Res Function(Trip) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? max = freezed,
    Object? numberOfDays = freezed,
    Object? type = freezed,
    Object? cost = freezed,
    Object? status = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? category = freezed,
    Object? review = freezed,
    Object? reviews = freezed,
    Object? favorites = freezed,
    Object? stations = freezed,
    Object? favoritesRelation = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
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
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as int?,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as int?,
      stations: stations == freezed
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<Station>?,
      favoritesRelation: favoritesRelation == freezed
          ? _value.favoritesRelation
          : favoritesRelation // ignore: cast_nullable_to_non_nullable
              as List<FavoriteRelation>?,
    ));
  }
}

/// @nodoc
abstract class _$$_TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$$_TripCopyWith(_$_Trip value, $Res Function(_$_Trip) then) =
      __$$_TripCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? description,
      int? max,
      @JsonKey(name: 'number_of_days')
          int? numberOfDays,
      String? type,
      int? cost,
      String? status,
      @JsonKey(name: 'started_at')
          DateTime? startedAt,
      @JsonKey(name: 'ended_at')
          DateTime? endedAt,
      String? category,
      int? review,
      List<Review>? reviews,
      int? favorites,
      List<Station>? stations,
      @JsonKey(name: 'favorites_relation')
          List<FavoriteRelation>? favoritesRelation});
}

/// @nodoc
class __$$_TripCopyWithImpl<$Res> extends _$TripCopyWithImpl<$Res>
    implements _$$_TripCopyWith<$Res> {
  __$$_TripCopyWithImpl(_$_Trip _value, $Res Function(_$_Trip) _then)
      : super(_value, (v) => _then(v as _$_Trip));

  @override
  _$_Trip get _value => super._value as _$_Trip;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? max = freezed,
    Object? numberOfDays = freezed,
    Object? type = freezed,
    Object? cost = freezed,
    Object? status = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? category = freezed,
    Object? review = freezed,
    Object? reviews = freezed,
    Object? favorites = freezed,
    Object? stations = freezed,
    Object? favoritesRelation = freezed,
  }) {
    return _then(_$_Trip(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
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
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as int?,
      reviews: reviews == freezed
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as int?,
      stations: stations == freezed
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<Station>?,
      favoritesRelation: favoritesRelation == freezed
          ? _value._favoritesRelation
          : favoritesRelation // ignore: cast_nullable_to_non_nullable
              as List<FavoriteRelation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trip extends _Trip {
  const _$_Trip(
      {this.id,
      this.name,
      this.description,
      this.max,
      @JsonKey(name: 'number_of_days')
          this.numberOfDays,
      this.type,
      this.cost,
      this.status,
      @JsonKey(name: 'started_at')
          this.startedAt,
      @JsonKey(name: 'ended_at')
          this.endedAt,
      this.category,
      this.review,
      final List<Review>? reviews,
      this.favorites,
      final List<Station>? stations,
      @JsonKey(name: 'favorites_relation')
          final List<FavoriteRelation>? favoritesRelation})
      : _reviews = reviews,
        _stations = stations,
        _favoritesRelation = favoritesRelation,
        super._();

  factory _$_Trip.fromJson(Map<String, dynamic> json) => _$$_TripFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? max;
  @override
  @JsonKey(name: 'number_of_days')
  final int? numberOfDays;
  @override
  final String? type;
  @override
  final int? cost;
  @override
  final String? status;
  @override
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @override
  @JsonKey(name: 'ended_at')
  final DateTime? endedAt;
  @override
  final String? category;
  @override
  final int? review;
  final List<Review>? _reviews;
  @override
  List<Review>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? favorites;
  final List<Station>? _stations;
  @override
  List<Station>? get stations {
    final value = _stations;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FavoriteRelation>? _favoritesRelation;
  @override
  @JsonKey(name: 'favorites_relation')
  List<FavoriteRelation>? get favoritesRelation {
    final value = _favoritesRelation;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Trip(id: $id, name: $name, description: $description, max: $max, numberOfDays: $numberOfDays, type: $type, cost: $cost, status: $status, startedAt: $startedAt, endedAt: $endedAt, category: $category, review: $review, reviews: $reviews, favorites: $favorites, stations: $stations, favoritesRelation: $favoritesRelation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trip &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.max, max) &&
            const DeepCollectionEquality()
                .equals(other.numberOfDays, numberOfDays) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality().equals(other.endedAt, endedAt) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.review, review) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            const DeepCollectionEquality().equals(other.favorites, favorites) &&
            const DeepCollectionEquality().equals(other._stations, _stations) &&
            const DeepCollectionEquality()
                .equals(other._favoritesRelation, _favoritesRelation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(max),
      const DeepCollectionEquality().hash(numberOfDays),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(startedAt),
      const DeepCollectionEquality().hash(endedAt),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(review),
      const DeepCollectionEquality().hash(_reviews),
      const DeepCollectionEquality().hash(favorites),
      const DeepCollectionEquality().hash(_stations),
      const DeepCollectionEquality().hash(_favoritesRelation));

  @JsonKey(ignore: true)
  @override
  _$$_TripCopyWith<_$_Trip> get copyWith =>
      __$$_TripCopyWithImpl<_$_Trip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripToJson(
      this,
    );
  }
}

abstract class _Trip extends Trip {
  const factory _Trip(
      {final String? id,
      final String? name,
      final String? description,
      final int? max,
      @JsonKey(name: 'number_of_days')
          final int? numberOfDays,
      final String? type,
      final int? cost,
      final String? status,
      @JsonKey(name: 'started_at')
          final DateTime? startedAt,
      @JsonKey(name: 'ended_at')
          final DateTime? endedAt,
      final String? category,
      final int? review,
      final List<Review>? reviews,
      final int? favorites,
      final List<Station>? stations,
      @JsonKey(name: 'favorites_relation')
          final List<FavoriteRelation>? favoritesRelation}) = _$_Trip;
  const _Trip._() : super._();

  factory _Trip.fromJson(Map<String, dynamic> json) = _$_Trip.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get max;
  @override
  @JsonKey(name: 'number_of_days')
  int? get numberOfDays;
  @override
  String? get type;
  @override
  int? get cost;
  @override
  String? get status;
  @override
  @JsonKey(name: 'started_at')
  DateTime? get startedAt;
  @override
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt;
  @override
  String? get category;
  @override
  int? get review;
  @override
  List<Review>? get reviews;
  @override
  int? get favorites;
  @override
  List<Station>? get stations;
  @override
  @JsonKey(name: 'favorites_relation')
  List<FavoriteRelation>? get favoritesRelation;
  @override
  @JsonKey(ignore: true)
  _$$_TripCopyWith<_$_Trip> get copyWith => throw _privateConstructorUsedError;
}
