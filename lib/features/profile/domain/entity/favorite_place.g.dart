// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoritePlace _$$_FavoritePlaceFromJson(Map<String, dynamic> json) =>
    _$_FavoritePlace(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      favorableType: json['favorable_type'] as String?,
      favorableId: json['favorable_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      favorable: json['favorable'] == null
          ? null
          : Place.fromJson(json['favorable'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FavoritePlaceToJson(_$_FavoritePlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'favorable_type': instance.favorableType,
      'favorable_id': instance.favorableId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'favorable': instance.favorable,
    };
