// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceTypeModel _$PlaceTypeModelFromJson(Map<String, dynamic> json) {
  return _PlaceTypeModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceTypeModel {
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<PlaceType>? get places => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceTypeModelCopyWith<PlaceTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceTypeModelCopyWith<$Res> {
  factory $PlaceTypeModelCopyWith(
          PlaceTypeModel value, $Res Function(PlaceTypeModel) then) =
      _$PlaceTypeModelCopyWithImpl<$Res>;
  $Res call({String? message, @JsonKey(name: "data") List<PlaceType>? places});
}

/// @nodoc
class _$PlaceTypeModelCopyWithImpl<$Res>
    implements $PlaceTypeModelCopyWith<$Res> {
  _$PlaceTypeModelCopyWithImpl(this._value, this._then);

  final PlaceTypeModel _value;
  // ignore: unused_field
  final $Res Function(PlaceTypeModel) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? places = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceType>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceTypeModelCopyWith<$Res>
    implements $PlaceTypeModelCopyWith<$Res> {
  factory _$$_PlaceTypeModelCopyWith(
          _$_PlaceTypeModel value, $Res Function(_$_PlaceTypeModel) then) =
      __$$_PlaceTypeModelCopyWithImpl<$Res>;
  @override
  $Res call({String? message, @JsonKey(name: "data") List<PlaceType>? places});
}

/// @nodoc
class __$$_PlaceTypeModelCopyWithImpl<$Res>
    extends _$PlaceTypeModelCopyWithImpl<$Res>
    implements _$$_PlaceTypeModelCopyWith<$Res> {
  __$$_PlaceTypeModelCopyWithImpl(
      _$_PlaceTypeModel _value, $Res Function(_$_PlaceTypeModel) _then)
      : super(_value, (v) => _then(v as _$_PlaceTypeModel));

  @override
  _$_PlaceTypeModel get _value => super._value as _$_PlaceTypeModel;

  @override
  $Res call({
    Object? message = freezed,
    Object? places = freezed,
  }) {
    return _then(_$_PlaceTypeModel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      places: places == freezed
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceTypeModel implements _PlaceTypeModel {
  const _$_PlaceTypeModel(
      {this.message, @JsonKey(name: "data") final List<PlaceType>? places})
      : _places = places;

  factory _$_PlaceTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceTypeModelFromJson(json);

  @override
  final String? message;
  final List<PlaceType>? _places;
  @override
  @JsonKey(name: "data")
  List<PlaceType>? get places {
    final value = _places;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlaceTypeModel(message: $message, places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceTypeModel &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceTypeModelCopyWith<_$_PlaceTypeModel> get copyWith =>
      __$$_PlaceTypeModelCopyWithImpl<_$_PlaceTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceTypeModelToJson(
      this,
    );
  }
}

abstract class _PlaceTypeModel implements PlaceTypeModel {
  const factory _PlaceTypeModel(
          {final String? message,
          @JsonKey(name: "data") final List<PlaceType>? places}) =
      _$_PlaceTypeModel;

  factory _PlaceTypeModel.fromJson(Map<String, dynamic> json) =
      _$_PlaceTypeModel.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(name: "data")
  List<PlaceType>? get places;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceTypeModelCopyWith<_$_PlaceTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
