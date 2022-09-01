// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_type_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceTypeTag _$PlaceTypeTagFromJson(Map<String, dynamic> json) {
  return _PlaceTypeTag.fromJson(json);
}

/// @nodoc
mixin _$PlaceTypeTag {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_type_id')
  String? get placeTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag_id')
  String? get tagId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  PlaceTypeTagPivot? get pivot => throw _privateConstructorUsedError;
  Tag? get tag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceTypeTagCopyWith<PlaceTypeTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceTypeTagCopyWith<$Res> {
  factory $PlaceTypeTagCopyWith(
          PlaceTypeTag value, $Res Function(PlaceTypeTag) then) =
      _$PlaceTypeTagCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'place_type_id') String? placeTypeId,
      @JsonKey(name: 'tag_id') String? tagId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      PlaceTypeTagPivot? pivot,
      Tag? tag});

  $PlaceTypeTagPivotCopyWith<$Res>? get pivot;
  $TagCopyWith<$Res>? get tag;
}

/// @nodoc
class _$PlaceTypeTagCopyWithImpl<$Res> implements $PlaceTypeTagCopyWith<$Res> {
  _$PlaceTypeTagCopyWithImpl(this._value, this._then);

  final PlaceTypeTag _value;
  // ignore: unused_field
  final $Res Function(PlaceTypeTag) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? placeTypeId = freezed,
    Object? tagId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? pivot = freezed,
    Object? tag = freezed,
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
      tagId: tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
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
      pivot: pivot == freezed
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as PlaceTypeTagPivot?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag?,
    ));
  }

  @override
  $PlaceTypeTagPivotCopyWith<$Res>? get pivot {
    if (_value.pivot == null) {
      return null;
    }

    return $PlaceTypeTagPivotCopyWith<$Res>(_value.pivot!, (value) {
      return _then(_value.copyWith(pivot: value));
    });
  }

  @override
  $TagCopyWith<$Res>? get tag {
    if (_value.tag == null) {
      return null;
    }

    return $TagCopyWith<$Res>(_value.tag!, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

/// @nodoc
abstract class _$$_PlaceTypeTagCopyWith<$Res>
    implements $PlaceTypeTagCopyWith<$Res> {
  factory _$$_PlaceTypeTagCopyWith(
          _$_PlaceTypeTag value, $Res Function(_$_PlaceTypeTag) then) =
      __$$_PlaceTypeTagCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'place_type_id') String? placeTypeId,
      @JsonKey(name: 'tag_id') String? tagId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      PlaceTypeTagPivot? pivot,
      Tag? tag});

  @override
  $PlaceTypeTagPivotCopyWith<$Res>? get pivot;
  @override
  $TagCopyWith<$Res>? get tag;
}

/// @nodoc
class __$$_PlaceTypeTagCopyWithImpl<$Res>
    extends _$PlaceTypeTagCopyWithImpl<$Res>
    implements _$$_PlaceTypeTagCopyWith<$Res> {
  __$$_PlaceTypeTagCopyWithImpl(
      _$_PlaceTypeTag _value, $Res Function(_$_PlaceTypeTag) _then)
      : super(_value, (v) => _then(v as _$_PlaceTypeTag));

  @override
  _$_PlaceTypeTag get _value => super._value as _$_PlaceTypeTag;

  @override
  $Res call({
    Object? id = freezed,
    Object? placeTypeId = freezed,
    Object? tagId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? pivot = freezed,
    Object? tag = freezed,
  }) {
    return _then(_$_PlaceTypeTag(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      placeTypeId: placeTypeId == freezed
          ? _value.placeTypeId
          : placeTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      tagId: tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
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
      pivot: pivot == freezed
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as PlaceTypeTagPivot?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceTypeTag implements _PlaceTypeTag {
  const _$_PlaceTypeTag(
      {this.id,
      @JsonKey(name: 'place_type_id') this.placeTypeId,
      @JsonKey(name: 'tag_id') this.tagId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      this.pivot,
      this.tag});

  factory _$_PlaceTypeTag.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceTypeTagFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'place_type_id')
  final String? placeTypeId;
  @override
  @JsonKey(name: 'tag_id')
  final String? tagId;
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
  final PlaceTypeTagPivot? pivot;
  @override
  final Tag? tag;

  @override
  String toString() {
    return 'PlaceTypeTag(id: $id, placeTypeId: $placeTypeId, tagId: $tagId, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, pivot: $pivot, tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceTypeTag &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.placeTypeId, placeTypeId) &&
            const DeepCollectionEquality().equals(other.tagId, tagId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.pivot, pivot) &&
            const DeepCollectionEquality().equals(other.tag, tag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(placeTypeId),
      const DeepCollectionEquality().hash(tagId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(pivot),
      const DeepCollectionEquality().hash(tag));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceTypeTagCopyWith<_$_PlaceTypeTag> get copyWith =>
      __$$_PlaceTypeTagCopyWithImpl<_$_PlaceTypeTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceTypeTagToJson(
      this,
    );
  }
}

abstract class _PlaceTypeTag implements PlaceTypeTag {
  const factory _PlaceTypeTag(
      {final String? id,
      @JsonKey(name: 'place_type_id') final String? placeTypeId,
      @JsonKey(name: 'tag_id') final String? tagId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') final DateTime? deletedAt,
      final PlaceTypeTagPivot? pivot,
      final Tag? tag}) = _$_PlaceTypeTag;

  factory _PlaceTypeTag.fromJson(Map<String, dynamic> json) =
      _$_PlaceTypeTag.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'place_type_id')
  String? get placeTypeId;
  @override
  @JsonKey(name: 'tag_id')
  String? get tagId;
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
  PlaceTypeTagPivot? get pivot;
  @override
  Tag? get tag;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceTypeTagCopyWith<_$_PlaceTypeTag> get copyWith =>
      throw _privateConstructorUsedError;
}
