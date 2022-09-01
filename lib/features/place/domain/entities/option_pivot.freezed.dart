// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'option_pivot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OptionPivot _$OptionPivotFromJson(Map<String, dynamic> json) {
  return _OptionPivot.fromJson(json);
}

/// @nodoc
mixin _$OptionPivot {
  @JsonKey(name: 'specs_place_id')
  String? get specsPlaceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'option_id')
  String? get optionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionPivotCopyWith<OptionPivot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionPivotCopyWith<$Res> {
  factory $OptionPivotCopyWith(
          OptionPivot value, $Res Function(OptionPivot) then) =
      _$OptionPivotCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'specs_place_id') String? specsPlaceId,
      @JsonKey(name: 'option_id') String? optionId});
}

/// @nodoc
class _$OptionPivotCopyWithImpl<$Res> implements $OptionPivotCopyWith<$Res> {
  _$OptionPivotCopyWithImpl(this._value, this._then);

  final OptionPivot _value;
  // ignore: unused_field
  final $Res Function(OptionPivot) _then;

  @override
  $Res call({
    Object? specsPlaceId = freezed,
    Object? optionId = freezed,
  }) {
    return _then(_value.copyWith(
      specsPlaceId: specsPlaceId == freezed
          ? _value.specsPlaceId
          : specsPlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      optionId: optionId == freezed
          ? _value.optionId
          : optionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_OptionPivotCopyWith<$Res>
    implements $OptionPivotCopyWith<$Res> {
  factory _$$_OptionPivotCopyWith(
          _$_OptionPivot value, $Res Function(_$_OptionPivot) then) =
      __$$_OptionPivotCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'specs_place_id') String? specsPlaceId,
      @JsonKey(name: 'option_id') String? optionId});
}

/// @nodoc
class __$$_OptionPivotCopyWithImpl<$Res> extends _$OptionPivotCopyWithImpl<$Res>
    implements _$$_OptionPivotCopyWith<$Res> {
  __$$_OptionPivotCopyWithImpl(
      _$_OptionPivot _value, $Res Function(_$_OptionPivot) _then)
      : super(_value, (v) => _then(v as _$_OptionPivot));

  @override
  _$_OptionPivot get _value => super._value as _$_OptionPivot;

  @override
  $Res call({
    Object? specsPlaceId = freezed,
    Object? optionId = freezed,
  }) {
    return _then(_$_OptionPivot(
      specsPlaceId: specsPlaceId == freezed
          ? _value.specsPlaceId
          : specsPlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      optionId: optionId == freezed
          ? _value.optionId
          : optionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OptionPivot implements _OptionPivot {
  const _$_OptionPivot(
      {@JsonKey(name: 'specs_place_id') this.specsPlaceId,
      @JsonKey(name: 'option_id') this.optionId});

  factory _$_OptionPivot.fromJson(Map<String, dynamic> json) =>
      _$$_OptionPivotFromJson(json);

  @override
  @JsonKey(name: 'specs_place_id')
  final String? specsPlaceId;
  @override
  @JsonKey(name: 'option_id')
  final String? optionId;

  @override
  String toString() {
    return 'OptionPivot(specsPlaceId: $specsPlaceId, optionId: $optionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OptionPivot &&
            const DeepCollectionEquality()
                .equals(other.specsPlaceId, specsPlaceId) &&
            const DeepCollectionEquality().equals(other.optionId, optionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(specsPlaceId),
      const DeepCollectionEquality().hash(optionId));

  @JsonKey(ignore: true)
  @override
  _$$_OptionPivotCopyWith<_$_OptionPivot> get copyWith =>
      __$$_OptionPivotCopyWithImpl<_$_OptionPivot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OptionPivotToJson(
      this,
    );
  }
}

abstract class _OptionPivot implements OptionPivot {
  const factory _OptionPivot(
      {@JsonKey(name: 'specs_place_id') final String? specsPlaceId,
      @JsonKey(name: 'option_id') final String? optionId}) = _$_OptionPivot;

  factory _OptionPivot.fromJson(Map<String, dynamic> json) =
      _$_OptionPivot.fromJson;

  @override
  @JsonKey(name: 'specs_place_id')
  String? get specsPlaceId;
  @override
  @JsonKey(name: 'option_id')
  String? get optionId;
  @override
  @JsonKey(ignore: true)
  _$$_OptionPivotCopyWith<_$_OptionPivot> get copyWith =>
      throw _privateConstructorUsedError;
}
