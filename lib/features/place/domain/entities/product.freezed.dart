// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_type_id')
  String? get productTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_type')
  ProductType? get productType => throw _privateConstructorUsedError;
  Place? get place => throw _privateConstructorUsedError;
  List<Media>? get media => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'product_type_id') String? productTypeId,
      @JsonKey(name: 'place_id') String? placeId,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'product_type') ProductType? productType,
      Place? place,
      List<Media>? media,
      double? price});

  $ProductTypeCopyWith<$Res>? get productType;
  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? productTypeId = freezed,
    Object? placeId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? productType = freezed,
    Object? place = freezed,
    Object? media = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productTypeId: productTypeId == freezed
          ? _value.productTypeId
          : productTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as ProductType?,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $ProductTypeCopyWith<$Res>? get productType {
    if (_value.productType == null) {
      return null;
    }

    return $ProductTypeCopyWith<$Res>(_value.productType!, (value) {
      return _then(_value.copyWith(productType: value));
    });
  }

  @override
  $PlaceCopyWith<$Res>? get place {
    if (_value.place == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.place!, (value) {
      return _then(_value.copyWith(place: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'product_type_id') String? productTypeId,
      @JsonKey(name: 'place_id') String? placeId,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'product_type') ProductType? productType,
      Place? place,
      List<Media>? media,
      double? price});

  @override
  $ProductTypeCopyWith<$Res>? get productType;
  @override
  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, (v) => _then(v as _$_Product));

  @override
  _$_Product get _value => super._value as _$_Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? productTypeId = freezed,
    Object? placeId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? productType = freezed,
    Object? place = freezed,
    Object? media = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productTypeId: productTypeId == freezed
          ? _value.productTypeId
          : productTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as ProductType?,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
      media: media == freezed
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {this.id,
      @JsonKey(name: 'product_type_id') this.productTypeId,
      @JsonKey(name: 'place_id') this.placeId,
      this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'product_type') this.productType,
      this.place,
      final List<Media>? media,
      this.price})
      : _media = media;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'product_type_id')
  final String? productTypeId;
  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  final String? name;
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
  @JsonKey(name: 'product_type')
  final ProductType? productType;
  @override
  final Place? place;
  final List<Media>? _media;
  @override
  List<Media>? get media {
    final value = _media;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? price;

  @override
  String toString() {
    return 'Product(id: $id, productTypeId: $productTypeId, placeId: $placeId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, productType: $productType, place: $place, media: $media, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.productTypeId, productTypeId) &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality()
                .equals(other.productType, productType) &&
            const DeepCollectionEquality().equals(other.place, place) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(productTypeId),
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(productType),
      const DeepCollectionEquality().hash(place),
      const DeepCollectionEquality().hash(_media),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {final String? id,
      @JsonKey(name: 'product_type_id') final String? productTypeId,
      @JsonKey(name: 'place_id') final String? placeId,
      final String? name,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') final DateTime? deletedAt,
      @JsonKey(name: 'product_type') final ProductType? productType,
      final Place? place,
      final List<Media>? media,
      final double? price}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'product_type_id')
  String? get productTypeId;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override
  String? get name;
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
  @JsonKey(name: 'product_type')
  ProductType? get productType;
  @override
  Place? get place;
  @override
  List<Media>? get media;
  @override
  double? get price;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
