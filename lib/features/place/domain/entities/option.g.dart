// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Option _$$_OptionFromJson(Map<String, dynamic> json) => _$_Option(
      id: json['id'] as String?,
      name: json['name'] as String?,
      specsId: json['specs_id'] as String?,
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
          : OptionPivot.fromJson(json['pivot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OptionToJson(_$_Option instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'specs_id': instance.specsId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'pivot': instance.pivot,
    };
