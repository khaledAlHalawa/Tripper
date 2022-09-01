// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'products_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductsModel _$ProductsModelFromJson(Map<String, dynamic> json) {
  return _ProductsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductsModel {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Product>? get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<Link>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  dynamic get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  dynamic get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsModelCopyWith<ProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsModelCopyWith<$Res> {
  factory $ProductsModelCopyWith(
          ProductsModel value, $Res Function(ProductsModel) then) =
      _$ProductsModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'data') List<Product>? products,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<Link>? links,
      @JsonKey(name: 'next_page_url') dynamic nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') dynamic prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class _$ProductsModelCopyWithImpl<$Res>
    implements $ProductsModelCopyWith<$Res> {
  _$ProductsModelCopyWithImpl(this._value, this._then);

  final ProductsModel _value;
  // ignore: unused_field
  final $Res Function(ProductsModel) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? products = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      firstPageUrl: firstPageUrl == freezed
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: lastPageUrl == freezed
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: nextPageUrl == freezed
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: prevPageUrl == freezed
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductsModelCopyWith<$Res>
    implements $ProductsModelCopyWith<$Res> {
  factory _$$_ProductsModelCopyWith(
          _$_ProductsModel value, $Res Function(_$_ProductsModel) then) =
      __$$_ProductsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'data') List<Product>? products,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<Link>? links,
      @JsonKey(name: 'next_page_url') dynamic nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') dynamic prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$$_ProductsModelCopyWithImpl<$Res>
    extends _$ProductsModelCopyWithImpl<$Res>
    implements _$$_ProductsModelCopyWith<$Res> {
  __$$_ProductsModelCopyWithImpl(
      _$_ProductsModel _value, $Res Function(_$_ProductsModel) _then)
      : super(_value, (v) => _then(v as _$_ProductsModel));

  @override
  _$_ProductsModel get _value => super._value as _$_ProductsModel;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? products = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_ProductsModel(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      firstPageUrl: firstPageUrl == freezed
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: lastPageUrl == freezed
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: links == freezed
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: nextPageUrl == freezed
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: prevPageUrl == freezed
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductsModel implements _ProductsModel {
  const _$_ProductsModel(
      {@JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'data') final List<Product>? products,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      this.from,
      @JsonKey(name: 'last_page') this.lastPage,
      @JsonKey(name: 'last_page_url') this.lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      this.path,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      this.to,
      this.total})
      : _products = products,
        _links = links;

  factory _$_ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsModelFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<Product>? _products;
  @override
  @JsonKey(name: 'data')
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  @override
  final int? from;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  final List<Link>? _links;
  @override
  List<Link>? get links {
    final value = _links;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'next_page_url')
  final dynamic nextPageUrl;
  @override
  final String? path;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  final dynamic prevPageUrl;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'ProductsModel(currentPage: $currentPage, products: $products, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsModel &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other.firstPageUrl, firstPageUrl) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.lastPage, lastPage) &&
            const DeepCollectionEquality()
                .equals(other.lastPageUrl, lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            const DeepCollectionEquality()
                .equals(other.nextPageUrl, nextPageUrl) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality()
                .equals(other.prevPageUrl, prevPageUrl) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(firstPageUrl),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(lastPage),
      const DeepCollectionEquality().hash(lastPageUrl),
      const DeepCollectionEquality().hash(_links),
      const DeepCollectionEquality().hash(nextPageUrl),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(prevPageUrl),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$_ProductsModelCopyWith<_$_ProductsModel> get copyWith =>
      __$$_ProductsModelCopyWithImpl<_$_ProductsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsModelToJson(
      this,
    );
  }
}

abstract class _ProductsModel implements ProductsModel {
  const factory _ProductsModel(
      {@JsonKey(name: 'current_page') final int? currentPage,
      @JsonKey(name: 'data') final List<Product>? products,
      @JsonKey(name: 'first_page_url') final String? firstPageUrl,
      final int? from,
      @JsonKey(name: 'last_page') final int? lastPage,
      @JsonKey(name: 'last_page_url') final String? lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: 'next_page_url') final dynamic nextPageUrl,
      final String? path,
      @JsonKey(name: 'per_page') final int? perPage,
      @JsonKey(name: 'prev_page_url') final dynamic prevPageUrl,
      final int? to,
      final int? total}) = _$_ProductsModel;

  factory _ProductsModel.fromJson(Map<String, dynamic> json) =
      _$_ProductsModel.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'data')
  List<Product>? get products;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  int? get from;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @override
  List<Link>? get links;
  @override
  @JsonKey(name: 'next_page_url')
  dynamic get nextPageUrl;
  @override
  String? get path;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  dynamic get prevPageUrl;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsModelCopyWith<_$_ProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
