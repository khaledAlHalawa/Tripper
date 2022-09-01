// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spec.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Spec _$SpecFromJson(Map<String, dynamic> json) {
  return _Spec.fromJson(json);
}

/// @nodoc
mixin _$Spec {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_type_id')
  String? get placeTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_multiple_option')
  bool? get hasMultipleOption => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  SpecPivot? get pivot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecCopyWith<Spec> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecCopyWith<$Res> {
  factory $SpecCopyWith(Spec value, $Res Function(Spec) then) =
      _$SpecCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      @JsonKey(name: 'place_type_id') String? placeTypeId,
      @JsonKey(name: 'has_multiple_option') bool? hasMultipleOption,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      SpecPivot? pivot});

  $SpecPivotCopyWith<$Res>? get pivot;
}

/// @nodoc
class _$SpecCopyWithImpl<$Res> implements $SpecCopyWith<$Res> {
  _$SpecCopyWithImpl(this._value, this._then);

  final Spec _value;
  // ignore: unused_field
  final $Res Function(Spec) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? placeTypeId = freezed,
    Object? hasMultipleOption = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? pivot = freezed,
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
      placeTypeId: placeTypeId == freezed
          ? _value.placeTypeId
          : placeTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      hasMultipleOption: hasMultipleOption == freezed
          ? _value.hasMultipleOption
          : hasMultipleOption // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      pivot: pivot == freezed
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as SpecPivot?,
    ));
  }

  @override
  $SpecPivotCopyWith<$Res>? get pivot {
    if (_value.pivot == null) {
      return null;
    }

    return $SpecPivotCopyWith<$Res>(_value.pivot!, (value) {
      return _then(_value.copyWith(pivot: value));
    });
  }
}

/// @nodoc
abstract class _$$_SpecCopyWith<$Res> implements $SpecCopyWith<$Res> {
  factory _$$_SpecCopyWith(_$_Spec value, $Res Function(_$_Spec) then) =
      __$$_SpecCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      @JsonKey(name: 'place_type_id') String? placeTypeId,
      @JsonKey(name: 'has_multiple_option') bool? hasMultipleOption,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      SpecPivot? pivot});

  @override
  $SpecPivotCopyWith<$Res>? get pivot;
}

/// @nodoc
class __$$_SpecCopyWithImpl<$Res> extends _$SpecCopyWithImpl<$Res>
    implements _$$_SpecCopyWith<$Res> {
  __$$_SpecCopyWithImpl(_$_Spec _value, $Res Function(_$_Spec) _then)
      : super(_value, (v) => _then(v as _$_Spec));

  @override
  _$_Spec get _value => super._value as _$_Spec;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? placeTypeId = freezed,
    Object? hasMultipleOption = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? pivot = freezed,
  }) {
    return _then(_$_Spec(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      placeTypeId: placeTypeId == freezed
          ? _value.placeTypeId
          : placeTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      hasMultipleOption: hasMultipleOption == freezed
          ? _value.hasMultipleOption
          : hasMultipleOption // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      pivot: pivot == freezed
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as SpecPivot?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Spec implements _Spec {
  const _$_Spec(
      {this.id,
      this.name,
      @JsonKey(name: 'place_type_id') this.placeTypeId,
      @JsonKey(name: 'has_multiple_option') this.hasMultipleOption,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      this.pivot});

  factory _$_Spec.fromJson(Map<String, dynamic> json) => _$$_SpecFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'place_type_id')
  final String? placeTypeId;
  @override
  @JsonKey(name: 'has_multiple_option')
  final bool? hasMultipleOption;
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
  final SpecPivot? pivot;

  @override
  String toString() {
    return 'Spec(id: $id, name: $name, placeTypeId: $placeTypeId, hasMultipleOption: $hasMultipleOption, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, pivot: $pivot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Spec &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.placeTypeId, placeTypeId) &&
            const DeepCollectionEquality()
                .equals(other.hasMultipleOption, hasMultipleOption) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.pivot, pivot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(placeTypeId),
      const DeepCollectionEquality().hash(hasMultipleOption),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(pivot));

  @JsonKey(ignore: true)
  @override
  _$$_SpecCopyWith<_$_Spec> get copyWith =>
      __$$_SpecCopyWithImpl<_$_Spec>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecToJson(
      this,
    );
  }
}

abstract class _Spec implements Spec {
  const factory _Spec(
      {final String? id,
      final String? name,
      @JsonKey(name: 'place_type_id') final String? placeTypeId,
      @JsonKey(name: 'has_multiple_option') final bool? hasMultipleOption,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') final DateTime? deletedAt,
      final SpecPivot? pivot}) = _$_Spec;

  factory _Spec.fromJson(Map<String, dynamic> json) = _$_Spec.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'place_type_id')
  String? get placeTypeId;
  @override
  @JsonKey(name: 'has_multiple_option')
  bool? get hasMultipleOption;
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
  SpecPivot? get pivot;
  @override
  @JsonKey(ignore: true)
  _$$_SpecCopyWith<_$_Spec> get copyWith => throw _privateConstructorUsedError;
}
