// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get img => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  dynamic get code => throw _privateConstructorUsedError;
  dynamic get longitude => throw _privateConstructorUsedError;
  dynamic get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  int? get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  List<Media>? get medias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      dynamic img,
      dynamic description,
      dynamic code,
      dynamic longitude,
      dynamic latitude,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'country_id') int? countryId,
      @JsonKey(name: 'media') List<Media>? medias});
}

/// @nodoc
class _$CityCopyWithImpl<$Res> implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  final City _value;
  // ignore: unused_field
  final $Res Function(City) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? img = freezed,
    Object? description = freezed,
    Object? code = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? countryId = freezed,
    Object? medias = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as dynamic,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      medias: medias == freezed
          ? _value.medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$_CityCopyWith(_$_City value, $Res Function(_$_City) then) =
      __$$_CityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      dynamic img,
      dynamic description,
      dynamic code,
      dynamic longitude,
      dynamic latitude,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'country_id') int? countryId,
      @JsonKey(name: 'media') List<Media>? medias});
}

/// @nodoc
class __$$_CityCopyWithImpl<$Res> extends _$CityCopyWithImpl<$Res>
    implements _$$_CityCopyWith<$Res> {
  __$$_CityCopyWithImpl(_$_City _value, $Res Function(_$_City) _then)
      : super(_value, (v) => _then(v as _$_City));

  @override
  _$_City get _value => super._value as _$_City;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? img = freezed,
    Object? description = freezed,
    Object? code = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? countryId = freezed,
    Object? medias = freezed,
  }) {
    return _then(_$_City(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as dynamic,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      medias: medias == freezed
          ? _value._medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_City implements _City {
  const _$_City(
      {this.id,
      this.name,
      this.img,
      this.description,
      this.code,
      this.longitude,
      this.latitude,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'country_id') this.countryId,
      @JsonKey(name: 'media') final List<Media>? medias})
      : _medias = medias;

  factory _$_City.fromJson(Map<String, dynamic> json) => _$$_CityFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final dynamic img;
  @override
  final dynamic description;
  @override
  final dynamic code;
  @override
  final dynamic longitude;
  @override
  final dynamic latitude;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'country_id')
  final int? countryId;
  final List<Media>? _medias;
  @override
  @JsonKey(name: 'media')
  List<Media>? get medias {
    final value = _medias;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'City(id: $id, name: $name, img: $img, description: $description, code: $code, longitude: $longitude, latitude: $latitude, createdAt: $createdAt, updatedAt: $updatedAt, countryId: $countryId, medias: $medias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_City &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.countryId, countryId) &&
            const DeepCollectionEquality().equals(other._medias, _medias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(img),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(countryId),
      const DeepCollectionEquality().hash(_medias));

  @JsonKey(ignore: true)
  @override
  _$$_CityCopyWith<_$_City> get copyWith =>
      __$$_CityCopyWithImpl<_$_City>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City(
      {final int? id,
      final String? name,
      final dynamic img,
      final dynamic description,
      final dynamic code,
      final dynamic longitude,
      final dynamic latitude,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'country_id') final int? countryId,
      @JsonKey(name: 'media') final List<Media>? medias}) = _$_City;

  factory _City.fromJson(Map<String, dynamic> json) = _$_City.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  dynamic get img;
  @override
  dynamic get description;
  @override
  dynamic get code;
  @override
  dynamic get longitude;
  @override
  dynamic get latitude;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'country_id')
  int? get countryId;
  @override
  @JsonKey(name: 'media')
  List<Media>? get medias;
  @override
  @JsonKey(ignore: true)
  _$$_CityCopyWith<_$_City> get copyWith => throw _privateConstructorUsedError;
}
