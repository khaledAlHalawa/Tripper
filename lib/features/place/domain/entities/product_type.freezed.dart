// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductType _$ProductTypeFromJson(Map<String, dynamic> json) {
  return _ProductType.fromJson(json);
}

/// @nodoc
mixin _$ProductType {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_type_id')
  String? get placeTypeId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductTypeCopyWith<ProductType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTypeCopyWith<$Res> {
  factory $ProductTypeCopyWith(
          ProductType value, $Res Function(ProductType) then) =
      _$ProductTypeCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'place_type_id') String? placeTypeId,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt});
}

/// @nodoc
class _$ProductTypeCopyWithImpl<$Res> implements $ProductTypeCopyWith<$Res> {
  _$ProductTypeCopyWithImpl(this._value, this._then);

  final ProductType _value;
  // ignore: unused_field
  final $Res Function(ProductType) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? placeTypeId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      placeTypeId: placeTypeId == freezed
          ? _value.placeTypeId
          : placeTypeId // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
abstract class _$$_ProductTypeCopyWith<$Res>
    implements $ProductTypeCopyWith<$Res> {
  factory _$$_ProductTypeCopyWith(
          _$_ProductType value, $Res Function(_$_ProductType) then) =
      __$$_ProductTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'place_type_id') String? placeTypeId,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt});
}

/// @nodoc
class __$$_ProductTypeCopyWithImpl<$Res> extends _$ProductTypeCopyWithImpl<$Res>
    implements _$$_ProductTypeCopyWith<$Res> {
  __$$_ProductTypeCopyWithImpl(
      _$_ProductType _value, $Res Function(_$_ProductType) _then)
      : super(_value, (v) => _then(v as _$_ProductType));

  @override
  _$_ProductType get _value => super._value as _$_ProductType;

  @override
  $Res call({
    Object? id = freezed,
    Object? placeTypeId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_ProductType(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      placeTypeId: placeTypeId == freezed
          ? _value.placeTypeId
          : placeTypeId // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductType implements _ProductType {
  const _$_ProductType(
      {this.id,
      @JsonKey(name: 'place_type_id') this.placeTypeId,
      this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt});

  factory _$_ProductType.fromJson(Map<String, dynamic> json) =>
      _$$_ProductTypeFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'place_type_id')
  final String? placeTypeId;
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
  String toString() {
    return 'ProductType(id: $id, placeTypeId: $placeTypeId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductType &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.placeTypeId, placeTypeId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(placeTypeId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$$_ProductTypeCopyWith<_$_ProductType> get copyWith =>
      __$$_ProductTypeCopyWithImpl<_$_ProductType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductTypeToJson(
      this,
    );
  }
}

abstract class _ProductType implements ProductType {
  const factory _ProductType(
      {final String? id,
      @JsonKey(name: 'place_type_id') final String? placeTypeId,
      final String? name,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') final DateTime? deletedAt}) = _$_ProductType;

  factory _ProductType.fromJson(Map<String, dynamic> json) =
      _$_ProductType.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'place_type_id')
  String? get placeTypeId;
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
  @JsonKey(ignore: true)
  _$$_ProductTypeCopyWith<_$_ProductType> get copyWith =>
      throw _privateConstructorUsedError;
}
