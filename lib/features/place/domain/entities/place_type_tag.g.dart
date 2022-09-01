// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_type_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceTypeTag _$$_PlaceTypeTagFromJson(Map<String, dynamic> json) =>
    _$_PlaceTypeTag(
      id: json['id'] as String?,
      placeTypeId: json['place_type_id'] as String?,
      tagId: json['tag_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      pivot: json['pivot'] == null
          ? null
          : PlaceTypeTagPivot.fromJson(json['pivot'] as Map<String, dynamic>),
      tag: json['tag'] == null
          ? null
          : Tag.fromJson(json['tag'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlaceTypeTagToJson(_$_PlaceTypeTag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'place_type_id': instance.placeTypeId,
      'tag_id': instance.tagId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'pivot': instance.pivot,
      'tag': instance.tag,
    };
