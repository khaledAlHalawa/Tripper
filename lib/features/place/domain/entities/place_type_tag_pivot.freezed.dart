// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_type_tag_pivot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceTypeTagPivot _$PlaceTypeTagPivotFromJson(Map<String, dynamic> json) {
  return _PlaceTypeTagPivot.fromJson(json);
}

/// @nodoc
mixin _$PlaceTypeTagPivot {
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_type_tag_id')
  String? get placeTypeTagId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceTypeTagPivotCopyWith<PlaceTypeTagPivot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceTypeTagPivotCopyWith<$Res> {
  factory $PlaceTypeTagPivotCopyWith(
          PlaceTypeTagPivot value, $Res Function(PlaceTypeTagPivot) then) =
      _$PlaceTypeTagPivotCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'place_type_tag_id') String? placeTypeTagId});
}

/// @nodoc
class _$PlaceTypeTagPivotCopyWithImpl<$Res>
    implements $PlaceTypeTagPivotCopyWith<$Res> {
  _$PlaceTypeTagPivotCopyWithImpl(this._value, this._then);

  final PlaceTypeTagPivot _value;
  // ignore: unused_field
  final $Res Function(PlaceTypeTagPivot) _then;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? placeTypeTagId = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      placeTypeTagId: placeTypeTagId == freezed
          ? _value.placeTypeTagId
          : placeTypeTagId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceTypeTagPivotCopyWith<$Res>
    implements $PlaceTypeTagPivotCopyWith<$Res> {
  factory _$$_PlaceTypeTagPivotCopyWith(_$_PlaceTypeTagPivot value,
          $Res Function(_$_PlaceTypeTagPivot) then) =
      __$$_PlaceTypeTagPivotCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'place_type_tag_id') String? placeTypeTagId});
}

/// @nodoc
class __$$_PlaceTypeTagPivotCopyWithImpl<$Res>
    extends _$PlaceTypeTagPivotCopyWithImpl<$Res>
    implements _$$_PlaceTypeTagPivotCopyWith<$Res> {
  __$$_PlaceTypeTagPivotCopyWithImpl(
      _$_PlaceTypeTagPivot _value, $Res Function(_$_PlaceTypeTagPivot) _then)
      : super(_value, (v) => _then(v as _$_PlaceTypeTagPivot));

  @override
  _$_PlaceTypeTagPivot get _value => super._value as _$_PlaceTypeTagPivot;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? placeTypeTagId = freezed,
  }) {
    return _then(_$_PlaceTypeTagPivot(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      placeTypeTagId: placeTypeTagId == freezed
          ? _value.placeTypeTagId
          : placeTypeTagId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceTypeTagPivot implements _PlaceTypeTagPivot {
  const _$_PlaceTypeTagPivot(
      {@JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'place_type_tag_id') this.placeTypeTagId});

  factory _$_PlaceTypeTagPivot.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceTypeTagPivotFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  @JsonKey(name: 'place_type_tag_id')
  final String? placeTypeTagId;

  @override
  String toString() {
    return 'PlaceTypeTagPivot(placeId: $placeId, placeTypeTagId: $placeTypeTagId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceTypeTagPivot &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality()
                .equals(other.placeTypeTagId, placeTypeTagId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(placeTypeTagId));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceTypeTagPivotCopyWith<_$_PlaceTypeTagPivot> get copyWith =>
      __$$_PlaceTypeTagPivotCopyWithImpl<_$_PlaceTypeTagPivot>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceTypeTagPivotToJson(
      this,
    );
  }
}

abstract class _PlaceTypeTagPivot implements PlaceTypeTagPivot {
  const factory _PlaceTypeTagPivot(
          {@JsonKey(name: 'place_id') final String? placeId,
          @JsonKey(name: 'place_type_tag_id') final String? placeTypeTagId}) =
      _$_PlaceTypeTagPivot;

  factory _PlaceTypeTagPivot.fromJson(Map<String, dynamic> json) =
      _$_PlaceTypeTagPivot.fromJson;

  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override
  @JsonKey(name: 'place_type_tag_id')
  String? get placeTypeTagId;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceTypeTagPivotCopyWith<_$_PlaceTypeTagPivot> get copyWith =>
      throw _privateConstructorUsedError;
}
