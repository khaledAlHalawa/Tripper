// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewable_type')
  String? get reviewableType => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewable_id')
  String? get reviewableId => throw _privateConstructorUsedError;
  int? get review => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'reviewable_type') String? reviewableType,
      @JsonKey(name: 'reviewable_id') String? reviewableId,
      int? review,
      String? comment,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? reviewableType = freezed,
    Object? reviewableId = freezed,
    Object? review = freezed,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewableType: reviewableType == freezed
          ? _value.reviewableType
          : reviewableType // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewableId: reviewableId == freezed
          ? _value.reviewableId
          : reviewableId // ignore: cast_nullable_to_non_nullable
              as String?,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'reviewable_type') String? reviewableType,
      @JsonKey(name: 'reviewable_id') String? reviewableId,
      int? review,
      String? comment,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, (v) => _then(v as _$_Review));

  @override
  _$_Review get _value => super._value as _$_Review;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? reviewableType = freezed,
    Object? reviewableId = freezed,
    Object? review = freezed,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_Review(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewableType: reviewableType == freezed
          ? _value.reviewableType
          : reviewableType // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewableId: reviewableId == freezed
          ? _value.reviewableId
          : reviewableId // ignore: cast_nullable_to_non_nullable
              as String?,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review implements _Review {
  const _$_Review(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'reviewable_type') this.reviewableType,
      @JsonKey(name: 'reviewable_id') this.reviewableId,
      this.review,
      this.comment,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      this.user});

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'reviewable_type')
  final String? reviewableType;
  @override
  @JsonKey(name: 'reviewable_id')
  final String? reviewableId;
  @override
  final int? review;
  @override
  final String? comment;
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
  final User? user;

  @override
  String toString() {
    return 'Review(id: $id, userId: $userId, reviewableType: $reviewableType, reviewableId: $reviewableId, review: $review, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.reviewableType, reviewableType) &&
            const DeepCollectionEquality()
                .equals(other.reviewableId, reviewableId) &&
            const DeepCollectionEquality().equals(other.review, review) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(reviewableType),
      const DeepCollectionEquality().hash(reviewableId),
      const DeepCollectionEquality().hash(review),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {final String? id,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'reviewable_type') final String? reviewableType,
      @JsonKey(name: 'reviewable_id') final String? reviewableId,
      final int? review,
      final String? comment,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') final DateTime? deletedAt,
      final User? user}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'reviewable_type')
  String? get reviewableType;
  @override
  @JsonKey(name: 'reviewable_id')
  String? get reviewableId;
  @override
  int? get review;
  @override
  String? get comment;
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
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}
