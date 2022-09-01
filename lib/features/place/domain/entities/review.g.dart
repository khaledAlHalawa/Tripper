// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      reviewableType: json['reviewable_type'] as String?,
      reviewableId: json['reviewable_id'] as String?,
      review: json['review'] as int?,
      comment: json['comment'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'reviewable_type': instance.reviewableType,
      'reviewable_id': instance.reviewableId,
      'review': instance.review,
      'comment': instance.comment,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'user': instance.user,
    };
