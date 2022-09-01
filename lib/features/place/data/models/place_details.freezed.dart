// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceDetailsModel _$PlaceDetailsModelFromJson(Map<String, dynamic> json) {
  return _PlaceDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceDetailsModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_type_id')
  String? get placeTypeId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  dynamic get img => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'place_type_tag')
  List<PlaceTypeTag>? get placeTypeTag => throw _privateConstructorUsedError;
  List<Spec>? get specs => throw _privateConstructorUsedError;
  @JsonKey(name: 'specs_place')
  List<SpecsPlace>? get specsPlace => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;
  List<Review>? get reviews => throw _privateConstructorUsedError;
  List<Media>? get media => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool? get canAddReview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDetailsModelCopyWith<PlaceDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailsModelCopyWith<$Res> {
  factory $PlaceDetailsModelCopyWith(
          PlaceDetailsModel value, $Res Function(PlaceDetailsModel) then) =
      _$PlaceDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'place_type_id') String? placeTypeId,
      String? name,
      String? description,
      int? price,
      dynamic img,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'place_type_tag') List<PlaceTypeTag>? placeTypeTag,
      List<Spec>? specs,
      @JsonKey(name: 'specs_place') List<SpecsPlace>? specsPlace,
      List<Product>? products,
      List<Review>? reviews,
      List<Media>? media,
      @JsonKey(ignore: true) bool? canAddReview});
}

/// @nodoc
class _$PlaceDetailsModelCopyWithImpl<$Res>
    implements $PlaceDetailsModelCopyWith<$Res> {
  _$PlaceDetailsModelCopyWithImpl(this._value, this._then);

  final PlaceDetailsModel _value;
  // ignore: unused_field
  final $Res Function(PlaceDetailsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? placeTypeId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? img = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? placeTypeTag = freezed,
    Object? specs = freezed,
    Object? specsPlace = freezed,
    Object? products = freezed,
    Object? reviews = freezed,
    Object? media = freezed,
    Object? canAddReview = freezed,
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
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      placeTypeTag: placeTypeTag == freezed
          ? _value.placeTypeTag
          : placeTypeTag // ignore: cast_nullable_to_non_nullable
              as List<PlaceTypeTag>?,
      specs: specs == freezed
          ? _value.specs
          : specs // ignore: cast_nullable_to_non_nullable
              as List<Spec>?,
      specsPlace: specsPlace == freezed
          ? _value.specsPlace
          : specsPlace // ignore: cast_nullable_to_non_nullable
              as List<SpecsPlace>?,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      canAddReview: canAddReview == freezed
          ? _value.canAddReview
          : canAddReview // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceDetailsModelCopyWith<$Res>
    implements $PlaceDetailsModelCopyWith<$Res> {
  factory _$$_PlaceDetailsModelCopyWith(_$_PlaceDetailsModel value,
          $Res Function(_$_PlaceDetailsModel) then) =
      __$$_PlaceDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'place_type_id') String? placeTypeId,
      String? name,
      String? description,
      int? price,
      dynamic img,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ended_at') DateTime? endedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'place_type_tag') List<PlaceTypeTag>? placeTypeTag,
      List<Spec>? specs,
      @JsonKey(name: 'specs_place') List<SpecsPlace>? specsPlace,
      List<Product>? products,
      List<Review>? reviews,
      List<Media>? media,
      @JsonKey(ignore: true) bool? canAddReview});
}

/// @nodoc
class __$$_PlaceDetailsModelCopyWithImpl<$Res>
    extends _$PlaceDetailsModelCopyWithImpl<$Res>
    implements _$$_PlaceDetailsModelCopyWith<$Res> {
  __$$_PlaceDetailsModelCopyWithImpl(
      _$_PlaceDetailsModel _value, $Res Function(_$_PlaceDetailsModel) _then)
      : super(_value, (v) => _then(v as _$_PlaceDetailsModel));

  @override
  _$_PlaceDetailsModel get _value => super._value as _$_PlaceDetailsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? placeTypeId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? img = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? placeTypeTag = freezed,
    Object? specs = freezed,
    Object? specsPlace = freezed,
    Object? products = freezed,
    Object? reviews = freezed,
    Object? media = freezed,
    Object? canAddReview = freezed,
  }) {
    return _then(_$_PlaceDetailsModel(
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
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      placeTypeTag: placeTypeTag == freezed
          ? _value._placeTypeTag
          : placeTypeTag // ignore: cast_nullable_to_non_nullable
              as List<PlaceTypeTag>?,
      specs: specs == freezed
          ? _value._specs
          : specs // ignore: cast_nullable_to_non_nullable
              as List<Spec>?,
      specsPlace: specsPlace == freezed
          ? _value._specsPlace
          : specsPlace // ignore: cast_nullable_to_non_nullable
              as List<SpecsPlace>?,
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      reviews: reviews == freezed
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      media: media == freezed
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
      canAddReview: canAddReview == freezed
          ? _value.canAddReview
          : canAddReview // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceDetailsModel implements _PlaceDetailsModel {
  const _$_PlaceDetailsModel(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'place_type_id') this.placeTypeId,
      this.name,
      this.description,
      this.price,
      this.img,
      @JsonKey(name: 'started_at') this.startedAt,
      @JsonKey(name: 'ended_at') this.endedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'place_type_tag') final List<PlaceTypeTag>? placeTypeTag,
      final List<Spec>? specs,
      @JsonKey(name: 'specs_place') final List<SpecsPlace>? specsPlace,
      final List<Product>? products,
      final List<Review>? reviews,
      final List<Media>? media,
      @JsonKey(ignore: true) this.canAddReview})
      : _placeTypeTag = placeTypeTag,
        _specs = specs,
        _specsPlace = specsPlace,
        _products = products,
        _reviews = reviews,
        _media = media;

  factory _$_PlaceDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceDetailsModelFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'place_type_id')
  final String? placeTypeId;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? price;
  @override
  final dynamic img;
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
  final List<PlaceTypeTag>? _placeTypeTag;
  @override
  @JsonKey(name: 'place_type_tag')
  List<PlaceTypeTag>? get placeTypeTag {
    final value = _placeTypeTag;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Spec>? _specs;
  @override
  List<Spec>? get specs {
    final value = _specs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SpecsPlace>? _specsPlace;
  @override
  @JsonKey(name: 'specs_place')
  List<SpecsPlace>? get specsPlace {
    final value = _specsPlace;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  @JsonKey(ignore: true)
  final bool? canAddReview;

  @override
  String toString() {
    return 'PlaceDetailsModel(id: $id, userId: $userId, placeTypeId: $placeTypeId, name: $name, description: $description, price: $price, img: $img, startedAt: $startedAt, endedAt: $endedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, placeTypeTag: $placeTypeTag, specs: $specs, specsPlace: $specsPlace, products: $products, reviews: $reviews, media: $media, canAddReview: $canAddReview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceDetailsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.placeTypeId, placeTypeId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality().equals(other.endedAt, endedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality()
                .equals(other._placeTypeTag, _placeTypeTag) &&
            const DeepCollectionEquality().equals(other._specs, _specs) &&
            const DeepCollectionEquality()
                .equals(other._specsPlace, _specsPlace) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality()
                .equals(other.canAddReview, canAddReview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(placeTypeId),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(img),
        const DeepCollectionEquality().hash(startedAt),
        const DeepCollectionEquality().hash(endedAt),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(deletedAt),
        const DeepCollectionEquality().hash(_placeTypeTag),
        const DeepCollectionEquality().hash(_specs),
        const DeepCollectionEquality().hash(_specsPlace),
        const DeepCollectionEquality().hash(_products),
        const DeepCollectionEquality().hash(_reviews),
        const DeepCollectionEquality().hash(_media),
        const DeepCollectionEquality().hash(canAddReview)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_PlaceDetailsModelCopyWith<_$_PlaceDetailsModel> get copyWith =>
      __$$_PlaceDetailsModelCopyWithImpl<_$_PlaceDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceDetailsModelToJson(
      this,
    );
  }
}

abstract class _PlaceDetailsModel implements PlaceDetailsModel {
  const factory _PlaceDetailsModel(
      {final String? id,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'place_type_id') final String? placeTypeId,
      final String? name,
      final String? description,
      final int? price,
      final dynamic img,
      @JsonKey(name: 'started_at') final DateTime? startedAt,
      @JsonKey(name: 'ended_at') final DateTime? endedAt,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') final DateTime? deletedAt,
      @JsonKey(name: 'place_type_tag') final List<PlaceTypeTag>? placeTypeTag,
      final List<Spec>? specs,
      @JsonKey(name: 'specs_place') final List<SpecsPlace>? specsPlace,
      final List<Product>? products,
      final List<Review>? reviews,
      final List<Media>? media,
      @JsonKey(ignore: true) final bool? canAddReview}) = _$_PlaceDetailsModel;

  factory _PlaceDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_PlaceDetailsModel.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'place_type_id')
  String? get placeTypeId;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get price;
  @override
  dynamic get img;
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
  @JsonKey(name: 'place_type_tag')
  List<PlaceTypeTag>? get placeTypeTag;
  @override
  List<Spec>? get specs;
  @override
  @JsonKey(name: 'specs_place')
  List<SpecsPlace>? get specsPlace;
  @override
  List<Product>? get products;
  @override
  List<Review>? get reviews;
  @override
  List<Media>? get media;
  @override
  @JsonKey(ignore: true)
  bool? get canAddReview;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceDetailsModelCopyWith<_$_PlaceDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
