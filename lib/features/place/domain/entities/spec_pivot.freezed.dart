// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spec_pivot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecPivot _$SpecPivotFromJson(Map<String, dynamic> json) {
  return _SpecPivot.fromJson(json);
}

/// @nodoc
mixin _$SpecPivot {
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'specs_id')
  String? get specsId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecPivotCopyWith<SpecPivot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecPivotCopyWith<$Res> {
  factory $SpecPivotCopyWith(SpecPivot value, $Res Function(SpecPivot) then) =
      _$SpecPivotCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'specs_id') String? specsId});
}

/// @nodoc
class _$SpecPivotCopyWithImpl<$Res> implements $SpecPivotCopyWith<$Res> {
  _$SpecPivotCopyWithImpl(this._value, this._then);

  final SpecPivot _value;
  // ignore: unused_field
  final $Res Function(SpecPivot) _then;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? specsId = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      specsId: specsId == freezed
          ? _value.specsId
          : specsId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SpecPivotCopyWith<$Res> implements $SpecPivotCopyWith<$Res> {
  factory _$$_SpecPivotCopyWith(
          _$_SpecPivot value, $Res Function(_$_SpecPivot) then) =
      __$$_SpecPivotCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'specs_id') String? specsId});
}

/// @nodoc
class __$$_SpecPivotCopyWithImpl<$Res> extends _$SpecPivotCopyWithImpl<$Res>
    implements _$$_SpecPivotCopyWith<$Res> {
  __$$_SpecPivotCopyWithImpl(
      _$_SpecPivot _value, $Res Function(_$_SpecPivot) _then)
      : super(_value, (v) => _then(v as _$_SpecPivot));

  @override
  _$_SpecPivot get _value => super._value as _$_SpecPivot;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? specsId = freezed,
  }) {
    return _then(_$_SpecPivot(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      specsId: specsId == freezed
          ? _value.specsId
          : specsId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpecPivot implements _SpecPivot {
  const _$_SpecPivot(
      {@JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'specs_id') this.specsId});

  factory _$_SpecPivot.fromJson(Map<String, dynamic> json) =>
      _$$_SpecPivotFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  @JsonKey(name: 'specs_id')
  final String? specsId;

  @override
  String toString() {
    return 'SpecPivot(placeId: $placeId, specsId: $specsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpecPivot &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality().equals(other.specsId, specsId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(specsId));

  @JsonKey(ignore: true)
  @override
  _$$_SpecPivotCopyWith<_$_SpecPivot> get copyWith =>
      __$$_SpecPivotCopyWithImpl<_$_SpecPivot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecPivotToJson(
      this,
    );
  }
}

abstract class _SpecPivot implements SpecPivot {
  const factory _SpecPivot(
      {@JsonKey(name: 'place_id') final String? placeId,
      @JsonKey(name: 'specs_id') final String? specsId}) = _$_SpecPivot;

  factory _SpecPivot.fromJson(Map<String, dynamic> json) =
      _$_SpecPivot.fromJson;

  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override
  @JsonKey(name: 'specs_id')
  String? get specsId;
  @override
  @JsonKey(ignore: true)
  _$$_SpecPivotCopyWith<_$_SpecPivot> get copyWith =>
      throw _privateConstructorUsedError;
}
