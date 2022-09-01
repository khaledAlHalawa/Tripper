// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_relation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoriteRelation _$$_FavoriteRelationFromJson(Map<String, dynamic> json) =>
    _$_FavoriteRelation(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      favorableType: json['favorableType'] as String?,
      favorableId: json['favorableId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$_FavoriteRelationToJson(_$_FavoriteRelation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'favorableType': instance.favorableType,
      'favorableId': instance.favorableId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
