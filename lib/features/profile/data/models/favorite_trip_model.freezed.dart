// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteTripModel _$FavoriteTripModelFromJson(Map<String, dynamic> json) {
  return _FavoriteTripModel.fromJson(json);
}

/// @nodoc
mixin _$FavoriteTripModel {
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<FavoriteTrip>? get favorites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteTripModelCopyWith<FavoriteTripModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteTripModelCopyWith<$Res> {
  factory $FavoriteTripModelCopyWith(
          FavoriteTripModel value, $Res Function(FavoriteTripModel) then) =
      _$FavoriteTripModelCopyWithImpl<$Res>;
  $Res call(
      {String? message, @JsonKey(name: "data") List<FavoriteTrip>? favorites});
}

/// @nodoc
class _$FavoriteTripModelCopyWithImpl<$Res>
    implements $FavoriteTripModelCopyWith<$Res> {
  _$FavoriteTripModelCopyWithImpl(this._value, this._then);

  final FavoriteTripModel _value;
  // ignore: unused_field
  final $Res Function(FavoriteTripModel) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? favorites = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<FavoriteTrip>?,
    ));
  }
}

/// @nodoc
abstract class _$$_FavoriteTripModelCopyWith<$Res>
    implements $FavoriteTripModelCopyWith<$Res> {
  factory _$$_FavoriteTripModelCopyWith(_$_FavoriteTripModel value,
          $Res Function(_$_FavoriteTripModel) then) =
      __$$_FavoriteTripModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? message, @JsonKey(name: "data") List<FavoriteTrip>? favorites});
}

/// @nodoc
class __$$_FavoriteTripModelCopyWithImpl<$Res>
    extends _$FavoriteTripModelCopyWithImpl<$Res>
    implements _$$_FavoriteTripModelCopyWith<$Res> {
  __$$_FavoriteTripModelCopyWithImpl(
      _$_FavoriteTripModel _value, $Res Function(_$_FavoriteTripModel) _then)
      : super(_value, (v) => _then(v as _$_FavoriteTripModel));

  @override
  _$_FavoriteTripModel get _value => super._value as _$_FavoriteTripModel;

  @override
  $Res call({
    Object? message = freezed,
    Object? favorites = freezed,
  }) {
    return _then(_$_FavoriteTripModel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      favorites: favorites == freezed
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<FavoriteTrip>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteTripModel implements _FavoriteTripModel {
  const _$_FavoriteTripModel(
      {this.message,
      @JsonKey(name: "data") final List<FavoriteTrip>? favorites})
      : _favorites = favorites;

  factory _$_FavoriteTripModel.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteTripModelFromJson(json);

  @override
  final String? message;
  final List<FavoriteTrip>? _favorites;
  @override
  @JsonKey(name: "data")
  List<FavoriteTrip>? get favorites {
    final value = _favorites;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavoriteTripModel(message: $message, favorites: $favorites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteTripModel &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_favorites));

  @JsonKey(ignore: true)
  @override
  _$$_FavoriteTripModelCopyWith<_$_FavoriteTripModel> get copyWith =>
      __$$_FavoriteTripModelCopyWithImpl<_$_FavoriteTripModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteTripModelToJson(
      this,
    );
  }
}

abstract class _FavoriteTripModel implements FavoriteTripModel {
  const factory _FavoriteTripModel(
          {final String? message,
          @JsonKey(name: "data") final List<FavoriteTrip>? favorites}) =
      _$_FavoriteTripModel;

  factory _FavoriteTripModel.fromJson(Map<String, dynamic> json) =
      _$_FavoriteTripModel.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(name: "data")
  List<FavoriteTrip>? get favorites;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteTripModelCopyWith<_$_FavoriteTripModel> get copyWith =>
      throw _privateConstructorUsedError;
}
