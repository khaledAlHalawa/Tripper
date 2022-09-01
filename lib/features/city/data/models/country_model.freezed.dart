// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _CountryModel.fromJson(json);
}

/// @nodoc
mixin _$CountryModel {
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Country>? get countries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
          CountryModel value, $Res Function(CountryModel) then) =
      _$CountryModelCopyWithImpl<$Res>;
  $Res call({String? message, @JsonKey(name: "data") List<Country>? countries});
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res> implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  final CountryModel _value;
  // ignore: unused_field
  final $Res Function(CountryModel) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? countries = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CountryModelCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$$_CountryModelCopyWith(
          _$_CountryModel value, $Res Function(_$_CountryModel) then) =
      __$$_CountryModelCopyWithImpl<$Res>;
  @override
  $Res call({String? message, @JsonKey(name: "data") List<Country>? countries});
}

/// @nodoc
class __$$_CountryModelCopyWithImpl<$Res>
    extends _$CountryModelCopyWithImpl<$Res>
    implements _$$_CountryModelCopyWith<$Res> {
  __$$_CountryModelCopyWithImpl(
      _$_CountryModel _value, $Res Function(_$_CountryModel) _then)
      : super(_value, (v) => _then(v as _$_CountryModel));

  @override
  _$_CountryModel get _value => super._value as _$_CountryModel;

  @override
  $Res call({
    Object? message = freezed,
    Object? countries = freezed,
  }) {
    return _then(_$_CountryModel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      countries: countries == freezed
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryModel implements _CountryModel {
  const _$_CountryModel(
      {this.message, @JsonKey(name: "data") final List<Country>? countries})
      : _countries = countries;

  factory _$_CountryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CountryModelFromJson(json);

  @override
  final String? message;
  final List<Country>? _countries;
  @override
  @JsonKey(name: "data")
  List<Country>? get countries {
    final value = _countries;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CountryModel(message: $message, countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryModel &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_countries));

  @JsonKey(ignore: true)
  @override
  _$$_CountryModelCopyWith<_$_CountryModel> get copyWith =>
      __$$_CountryModelCopyWithImpl<_$_CountryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryModelToJson(
      this,
    );
  }
}

abstract class _CountryModel implements CountryModel {
  const factory _CountryModel(
      {final String? message,
      @JsonKey(name: "data") final List<Country>? countries}) = _$_CountryModel;

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$_CountryModel.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(name: "data")
  List<Country>? get countries;
  @override
  @JsonKey(ignore: true)
  _$$_CountryModelCopyWith<_$_CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
