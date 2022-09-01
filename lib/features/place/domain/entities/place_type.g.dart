// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceType _$$_PlaceTypeFromJson(Map<String, dynamic> json) => _$_PlaceType(
      id: json['id'] as String?,
      name: json['name'] as String?,
      icon: json['icon'],
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

Map<String, dynamic> _$$_PlaceTypeToJson(_$_PlaceType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
