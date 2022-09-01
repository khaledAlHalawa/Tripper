// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorable_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavorablePlace _$$_FavorablePlaceFromJson(Map<String, dynamic> json) =>
    _$_FavorablePlace(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      placeTypeId: json['place_type_id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as int?,
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      endedAt: json['ended_at'] == null
          ? null
          : DateTime.parse(json['ended_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$$_FavorablePlaceToJson(_$_FavorablePlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'place_type_id': instance.placeTypeId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'started_at': instance.startedAt?.toIso8601String(),
      'ended_at': instance.endedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
