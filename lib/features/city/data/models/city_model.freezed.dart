// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityModel _$CityModelFromJson(Map<String, dynamic> json) {
  return _CityModel.fromJson(json);
}

/// @nodoc
mixin _$CityModel {
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<City>? get cities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityModelCopyWith<CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityModelCopyWith<$Res> {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) then) =
      _$CityModelCopyWithImpl<$Res>;
  $Res call({String? message, @JsonKey(name: 'data') List<City>? cities});
}

/// @nodoc
class _$CityModelCopyWithImpl<$Res> implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._value, this._then);

  final CityModel _value;
  // ignore: unused_field
  final $Res Function(CityModel) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? cities = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      cities: cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CityModelCopyWith<$Res> implements $CityModelCopyWith<$Res> {
  factory _$$_CityModelCopyWith(
          _$_CityModel value, $Res Function(_$_CityModel) then) =
      __$$_CityModelCopyWithImpl<$Res>;
  @override
  $Res call({String? message, @JsonKey(name: 'data') List<City>? cities});
}

/// @nodoc
class __$$_CityModelCopyWithImpl<$Res> extends _$CityModelCopyWithImpl<$Res>
    implements _$$_CityModelCopyWith<$Res> {
  __$$_CityModelCopyWithImpl(
      _$_CityModel _value, $Res Function(_$_CityModel) _then)
      : super(_value, (v) => _then(v as _$_CityModel));

  @override
  _$_CityModel get _value => super._value as _$_CityModel;

  @override
  $Res call({
    Object? message = freezed,
    Object? cities = freezed,
  }) {
    return _then(_$_CityModel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      cities: cities == freezed
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityModel implements _CityModel {
  const _$_CityModel(
      {this.message, @JsonKey(name: 'data') final List<City>? cities})
      : _cities = cities;

  factory _$_CityModel.fromJson(Map<String, dynamic> json) =>
      _$$_CityModelFromJson(json);

  @override
  final String? message;
  final List<City>? _cities;
  @override
  @JsonKey(name: 'data')
  List<City>? get cities {
    final value = _cities;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CityModel(message: $message, cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityModel &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_cities));

  @JsonKey(ignore: true)
  @override
  _$$_CityModelCopyWith<_$_CityModel> get copyWith =>
      __$$_CityModelCopyWithImpl<_$_CityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityModelToJson(
      this,
    );
  }
}

abstract class _CityModel implements CityModel {
  const factory _CityModel(
      {final String? message,
      @JsonKey(name: 'data') final List<City>? cities}) = _$_CityModel;

  factory _CityModel.fromJson(Map<String, dynamic> json) =
      _$_CityModel.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<City>? get cities;
  @override
  @JsonKey(ignore: true)
  _$$_CityModelCopyWith<_$_CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
