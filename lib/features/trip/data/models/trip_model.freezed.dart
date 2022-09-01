// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TripModel _$TripModelFromJson(Map<String, dynamic> json) {
  return _TripModel.fromJson(json);
}

/// @nodoc
mixin _$TripModel {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Trip>? get trips => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<Link>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  dynamic get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  dynamic get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripModelCopyWith<TripModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripModelCopyWith<$Res> {
  factory $TripModelCopyWith(TripModel value, $Res Function(TripModel) then) =
      _$TripModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'data') List<Trip>? trips,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<Link>? links,
      @JsonKey(name: 'next_page_url') dynamic nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') dynamic prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class _$TripModelCopyWithImpl<$Res> implements $TripModelCopyWith<$Res> {
  _$TripModelCopyWithImpl(this._value, this._then);

  final TripModel _value;
  // ignore: unused_field
  final $Res Function(TripModel) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? trips = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      trips: trips == freezed
          ? _value.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<Trip>?,
      firstPageUrl: firstPageUrl == freezed
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: lastPageUrl == freezed
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: nextPageUrl == freezed
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: prevPageUrl == freezed
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_TripModelCopyWith<$Res> implements $TripModelCopyWith<$Res> {
  factory _$$_TripModelCopyWith(
          _$_TripModel value, $Res Function(_$_TripModel) then) =
      __$$_TripModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'data') List<Trip>? trips,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<Link>? links,
      @JsonKey(name: 'next_page_url') dynamic nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') dynamic prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$$_TripModelCopyWithImpl<$Res> extends _$TripModelCopyWithImpl<$Res>
    implements _$$_TripModelCopyWith<$Res> {
  __$$_TripModelCopyWithImpl(
      _$_TripModel _value, $Res Function(_$_TripModel) _then)
      : super(_value, (v) => _then(v as _$_TripModel));

  @override
  _$_TripModel get _value => super._value as _$_TripModel;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? trips = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_TripModel(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      trips: trips == freezed
          ? _value._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<Trip>?,
      firstPageUrl: firstPageUrl == freezed
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: lastPageUrl == freezed
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: links == freezed
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: nextPageUrl == freezed
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: prevPageUrl == freezed
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripModel implements _TripModel {
  const _$_TripModel(
      {@JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'data') final List<Trip>? trips,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      this.from,
      @JsonKey(name: 'last_page') this.lastPage,
      @JsonKey(name: 'last_page_url') this.lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      this.path,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      this.to,
      this.total})
      : _trips = trips,
        _links = links;

  factory _$_TripModel.fromJson(Map<String, dynamic> json) =>
      _$$_TripModelFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<Trip>? _trips;
  @override
  @JsonKey(name: 'data')
  List<Trip>? get trips {
    final value = _trips;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  @override
  final int? from;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  final List<Link>? _links;
  @override
  List<Link>? get links {
    final value = _links;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'next_page_url')
  final dynamic nextPageUrl;
  @override
  final String? path;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  final dynamic prevPageUrl;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'TripModel(currentPage: $currentPage, trips: $trips, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripModel &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other._trips, _trips) &&
            const DeepCollectionEquality()
                .equals(other.firstPageUrl, firstPageUrl) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.lastPage, lastPage) &&
            const DeepCollectionEquality()
                .equals(other.lastPageUrl, lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            const DeepCollectionEquality()
                .equals(other.nextPageUrl, nextPageUrl) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality()
                .equals(other.prevPageUrl, prevPageUrl) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(_trips),
      const DeepCollectionEquality().hash(firstPageUrl),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(lastPage),
      const DeepCollectionEquality().hash(lastPageUrl),
      const DeepCollectionEquality().hash(_links),
      const DeepCollectionEquality().hash(nextPageUrl),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(prevPageUrl),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$_TripModelCopyWith<_$_TripModel> get copyWith =>
      __$$_TripModelCopyWithImpl<_$_TripModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripModelToJson(
      this,
    );
  }
}

abstract class _TripModel implements TripModel {
  const factory _TripModel(
      {@JsonKey(name: 'current_page') final int? currentPage,
      @JsonKey(name: 'data') final List<Trip>? trips,
      @JsonKey(name: 'first_page_url') final String? firstPageUrl,
      final int? from,
      @JsonKey(name: 'last_page') final int? lastPage,
      @JsonKey(name: 'last_page_url') final String? lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: 'next_page_url') final dynamic nextPageUrl,
      final String? path,
      @JsonKey(name: 'per_page') final int? perPage,
      @JsonKey(name: 'prev_page_url') final dynamic prevPageUrl,
      final int? to,
      final int? total}) = _$_TripModel;

  factory _TripModel.fromJson(Map<String, dynamic> json) =
      _$_TripModel.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'data')
  List<Trip>? get trips;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  int? get from;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @override
  List<Link>? get links;
  @override
  @JsonKey(name: 'next_page_url')
  dynamic get nextPageUrl;
  @override
  String? get path;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  dynamic get prevPageUrl;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_TripModelCopyWith<_$_TripModel> get copyWith =>
      throw _privateConstructorUsedError;
}
