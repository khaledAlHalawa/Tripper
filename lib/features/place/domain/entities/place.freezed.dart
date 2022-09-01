// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get img => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_type')
  String? get placeType => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'street_address')
  String? get streetAddress => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  int? get comment => throw _privateConstructorUsedError;
  int? get review => throw _privateConstructorUsedError;
  int? get favorites => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  List<Media>? get medias => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites_relation')
  List<FavoriteRelation>? get favoritesRelation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      dynamic img,
      @JsonKey(name: 'place_type')
          String? placeType,
      String? address,
      @JsonKey(name: 'street_address')
          String? streetAddress,
      String? city,
      String? country,
      int? comment,
      int? review,
      int? favorites,
      @JsonKey(name: 'media')
          List<Media>? medias,
      @JsonKey(name: 'favorites_relation')
          List<FavoriteRelation>? favoritesRelation});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res> implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  final Place _value;
  // ignore: unused_field
  final $Res Function(Place) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? img = freezed,
    Object? placeType = freezed,
    Object? address = freezed,
    Object? streetAddress = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? comment = freezed,
    Object? review = freezed,
    Object? favorites = freezed,
    Object? medias = freezed,
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
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as dynamic,
      placeType: placeType == freezed
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress: streetAddress == freezed
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as int?,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as int?,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as int?,
      medias: medias == freezed
          ? _value.medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      favoritesRelation: favoritesRelation == freezed
          ? _value.favoritesRelation
          : favoritesRelation // ignore: cast_nullable_to_non_nullable
              as List<FavoriteRelation>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$_PlaceCopyWith(_$_Place value, $Res Function(_$_Place) then) =
      __$$_PlaceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      dynamic img,
      @JsonKey(name: 'place_type')
          String? placeType,
      String? address,
      @JsonKey(name: 'street_address')
          String? streetAddress,
      String? city,
      String? country,
      int? comment,
      int? review,
      int? favorites,
      @JsonKey(name: 'media')
          List<Media>? medias,
      @JsonKey(name: 'favorites_relation')
          List<FavoriteRelation>? favoritesRelation});
}

/// @nodoc
class __$$_PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res>
    implements _$$_PlaceCopyWith<$Res> {
  __$$_PlaceCopyWithImpl(_$_Place _value, $Res Function(_$_Place) _then)
      : super(_value, (v) => _then(v as _$_Place));

  @override
  _$_Place get _value => super._value as _$_Place;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? img = freezed,
    Object? placeType = freezed,
    Object? address = freezed,
    Object? streetAddress = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? comment = freezed,
    Object? review = freezed,
    Object? favorites = freezed,
    Object? medias = freezed,
    Object? favoritesRelation = freezed,
  }) {
    return _then(_$_Place(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as dynamic,
      placeType: placeType == freezed
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress: streetAddress == freezed
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as int?,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as int?,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as int?,
      medias: medias == freezed
          ? _value._medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      favoritesRelation: favoritesRelation == freezed
          ? _value._favoritesRelation
          : favoritesRelation // ignore: cast_nullable_to_non_nullable
              as List<FavoriteRelation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Place extends _Place {
  _$_Place(
      {this.id,
      this.name,
      this.img,
      @JsonKey(name: 'place_type')
          this.placeType,
      this.address,
      @JsonKey(name: 'street_address')
          this.streetAddress,
      this.city,
      this.country,
      this.comment,
      this.review,
      this.favorites,
      @JsonKey(name: 'media')
          final List<Media>? medias,
      @JsonKey(name: 'favorites_relation')
          final List<FavoriteRelation>? favoritesRelation})
      : _medias = medias,
        _favoritesRelation = favoritesRelation,
        super._();

  factory _$_Place.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final dynamic img;
  @override
  @JsonKey(name: 'place_type')
  final String? placeType;
  @override
  final String? address;
  @override
  @JsonKey(name: 'street_address')
  final String? streetAddress;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final int? comment;
  @override
  final int? review;
  @override
  final int? favorites;
  final List<Media>? _medias;
  @override
  @JsonKey(name: 'media')
  List<Media>? get medias {
    final value = _medias;
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
    return 'Place(id: $id, name: $name, img: $img, placeType: $placeType, address: $address, streetAddress: $streetAddress, city: $city, country: $country, comment: $comment, review: $review, favorites: $favorites, medias: $medias, favoritesRelation: $favoritesRelation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Place &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality().equals(other.placeType, placeType) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.streetAddress, streetAddress) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.review, review) &&
            const DeepCollectionEquality().equals(other.favorites, favorites) &&
            const DeepCollectionEquality().equals(other._medias, _medias) &&
            const DeepCollectionEquality()
                .equals(other._favoritesRelation, _favoritesRelation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(img),
      const DeepCollectionEquality().hash(placeType),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(streetAddress),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(review),
      const DeepCollectionEquality().hash(favorites),
      const DeepCollectionEquality().hash(_medias),
      const DeepCollectionEquality().hash(_favoritesRelation));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      __$$_PlaceCopyWithImpl<_$_Place>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceToJson(
      this,
    );
  }
}

abstract class _Place extends Place {
  factory _Place(
      {final String? id,
      final String? name,
      final dynamic img,
      @JsonKey(name: 'place_type')
          final String? placeType,
      final String? address,
      @JsonKey(name: 'street_address')
          final String? streetAddress,
      final String? city,
      final String? country,
      final int? comment,
      final int? review,
      final int? favorites,
      @JsonKey(name: 'media')
          final List<Media>? medias,
      @JsonKey(name: 'favorites_relation')
          final List<FavoriteRelation>? favoritesRelation}) = _$_Place;
  _Place._() : super._();

  factory _Place.fromJson(Map<String, dynamic> json) = _$_Place.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  dynamic get img;
  @override
  @JsonKey(name: 'place_type')
  String? get placeType;
  @override
  String? get address;
  @override
  @JsonKey(name: 'street_address')
  String? get streetAddress;
  @override
  String? get city;
  @override
  String? get country;
  @override
  int? get comment;
  @override
  int? get review;
  @override
  int? get favorites;
  @override
  @JsonKey(name: 'media')
  List<Media>? get medias;
  @override
  @JsonKey(name: 'favorites_relation')
  List<FavoriteRelation>? get favoritesRelation;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      throw _privateConstructorUsedError;
}
