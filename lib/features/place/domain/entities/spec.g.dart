// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Spec _$$_SpecFromJson(Map<String, dynamic> json) => _$_Spec(
      id: json['id'] as String?,
      name: json['name'] as String?,
      placeTypeId: json['place_type_id'] as String?,
      hasMultipleOption: json['has_multiple_option'] as bool?,
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
          : SpecPivot.fromJson(json['pivot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SpecToJson(_$_Spec instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'place_type_id': instance.placeTypeId,
      'has_multiple_option': instance.hasMultipleOption,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'pivot': instance.pivot,
    };
