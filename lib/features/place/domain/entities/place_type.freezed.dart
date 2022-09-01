// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceType _$PlaceTypeFromJson(Map<String, dynamic> json) {
  return _PlaceType.fromJson(json);
}

/// @nodoc
mixin _$PlaceType {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  PagingController<int, Place>? get pagingController =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceTypeCopyWith<PlaceType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceTypeCopyWith<$Res> {
  factory $PlaceTypeCopyWith(PlaceType value, $Res Function(PlaceType) then) =
      _$PlaceTypeCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      dynamic icon,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(ignore: true) PagingController<int, Place>? pagingController});
}

/// @nodoc
class _$PlaceTypeCopyWithImpl<$Res> implements $PlaceTypeCopyWith<$Res> {
  _$PlaceTypeCopyWithImpl(this._value, this._then);

  final PlaceType _value;
  // ignore: unused_field
  final $Res Function(PlaceType) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? pagingController = freezed,
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
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      pagingController: pagingController == freezed
          ? _value.pagingController
          : pagingController // ignore: cast_nullable_to_non_nullable
              as PagingController<int, Place>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceTypeCopyWith<$Res> implements $PlaceTypeCopyWith<$Res> {
  factory _$$_PlaceTypeCopyWith(
          _$_PlaceType value, $Res Function(_$_PlaceType) then) =
      __$$_PlaceTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      dynamic icon,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(ignore: true) PagingController<int, Place>? pagingController});
}

/// @nodoc
class __$$_PlaceTypeCopyWithImpl<$Res> extends _$PlaceTypeCopyWithImpl<$Res>
    implements _$$_PlaceTypeCopyWith<$Res> {
  __$$_PlaceTypeCopyWithImpl(
      _$_PlaceType _value, $Res Function(_$_PlaceType) _then)
      : super(_value, (v) => _then(v as _$_PlaceType));

  @override
  _$_PlaceType get _value => super._value as _$_PlaceType;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? pagingController = freezed,
  }) {
    return _then(_$_PlaceType(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      pagingController: pagingController == freezed
          ? _value.pagingController
          : pagingController // ignore: cast_nullable_to_non_nullable
              as PagingController<int, Place>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceType extends _PlaceType {
  _$_PlaceType(
      {this.id,
      this.name,
      this.icon,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(ignore: true) this.pagingController})
      : super._();

  factory _$_PlaceType.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceTypeFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final dynamic icon;
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
  @JsonKey(ignore: true)
  final PagingController<int, Place>? pagingController;

  @override
  String toString() {
    return 'PlaceType(id: $id, name: $name, icon: $icon, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, pagingController: $pagingController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceType &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality()
                .equals(other.pagingController, pagingController));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(pagingController));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceTypeCopyWith<_$_PlaceType> get copyWith =>
      __$$_PlaceTypeCopyWithImpl<_$_PlaceType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceTypeToJson(
      this,
    );
  }
}

abstract class _PlaceType extends PlaceType {
  factory _PlaceType(
      {final String? id,
      final String? name,
      final dynamic icon,
      @JsonKey(name: 'created_at')
          final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          final DateTime? updatedAt,
      @JsonKey(name: 'deleted_at')
          final DateTime? deletedAt,
      @JsonKey(ignore: true)
          final PagingController<int, Place>? pagingController}) = _$_PlaceType;
  _PlaceType._() : super._();

  factory _PlaceType.fromJson(Map<String, dynamic> json) =
      _$_PlaceType.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  dynamic get icon;
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
  PagingController<int, Place>? get pagingController;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceTypeCopyWith<_$_PlaceType> get copyWith =>
      throw _privateConstructorUsedError;
}
