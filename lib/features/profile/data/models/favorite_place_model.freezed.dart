// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoritePlaceModel _$FavoritePlaceModelFromJson(Map<String, dynamic> json) {
  return _Favorite.fromJson(json);
}

/// @nodoc
mixin _$FavoritePlaceModel {
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<FavoritePlace>? get favorites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritePlaceModelCopyWith<FavoritePlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePlaceModelCopyWith<$Res> {
  factory $FavoritePlaceModelCopyWith(
          FavoritePlaceModel value, $Res Function(FavoritePlaceModel) then) =
      _$FavoritePlaceModelCopyWithImpl<$Res>;
  $Res call(
      {String? message, @JsonKey(name: "data") List<FavoritePlace>? favorites});
}

/// @nodoc
class _$FavoritePlaceModelCopyWithImpl<$Res>
    implements $FavoritePlaceModelCopyWith<$Res> {
  _$FavoritePlaceModelCopyWithImpl(this._value, this._then);

  final FavoritePlaceModel _value;
  // ignore: unused_field
  final $Res Function(FavoritePlaceModel) _then;

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
              as List<FavoritePlace>?,
    ));
  }
}

/// @nodoc
abstract class _$$_FavoriteCopyWith<$Res>
    implements $FavoritePlaceModelCopyWith<$Res> {
  factory _$$_FavoriteCopyWith(
          _$_Favorite value, $Res Function(_$_Favorite) then) =
      __$$_FavoriteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? message, @JsonKey(name: "data") List<FavoritePlace>? favorites});
}

/// @nodoc
class __$$_FavoriteCopyWithImpl<$Res>
    extends _$FavoritePlaceModelCopyWithImpl<$Res>
    implements _$$_FavoriteCopyWith<$Res> {
  __$$_FavoriteCopyWithImpl(
      _$_Favorite _value, $Res Function(_$_Favorite) _then)
      : super(_value, (v) => _then(v as _$_Favorite));

  @override
  _$_Favorite get _value => super._value as _$_Favorite;

  @override
  $Res call({
    Object? message = freezed,
    Object? favorites = freezed,
  }) {
    return _then(_$_Favorite(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      favorites: favorites == freezed
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<FavoritePlace>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Favorite implements _Favorite {
  const _$_Favorite(
      {this.message,
      @JsonKey(name: "data") final List<FavoritePlace>? favorites})
      : _favorites = favorites;

  factory _$_Favorite.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteFromJson(json);

  @override
  final String? message;
  final List<FavoritePlace>? _favorites;
  @override
  @JsonKey(name: "data")
  List<FavoritePlace>? get favorites {
    final value = _favorites;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavoritePlaceModel(message: $message, favorites: $favorites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Favorite &&
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
  _$$_FavoriteCopyWith<_$_Favorite> get copyWith =>
      __$$_FavoriteCopyWithImpl<_$_Favorite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteToJson(
      this,
    );
  }
}

abstract class _Favorite implements FavoritePlaceModel {
  const factory _Favorite(
          {final String? message,
          @JsonKey(name: "data") final List<FavoritePlace>? favorites}) =
      _$_Favorite;

  factory _Favorite.fromJson(Map<String, dynamic> json) = _$_Favorite.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(name: "data")
  List<FavoritePlace>? get favorites;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteCopyWith<_$_Favorite> get copyWith =>
      throw _privateConstructorUsedError;
}
