// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductType _$$_ProductTypeFromJson(Map<String, dynamic> json) =>
    _$_ProductType(
      id: json['id'] as String?,
      placeTypeId: json['place_type_id'] as String?,
      name: json['name'] as String?,
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

Map<String, dynamic> _$$_ProductTypeToJson(_$_ProductType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'place_type_id': instance.placeTypeId,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
