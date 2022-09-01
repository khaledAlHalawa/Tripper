// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specs_plcae.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpecsPlace _$$_SpecsPlaceFromJson(Map<String, dynamic> json) =>
    _$_SpecsPlace(
      id: json['id'] as String?,
      specsId: json['specs_id'] as String?,
      placeId: json['place_id'] as String?,
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
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SpecsPlaceToJson(_$_SpecsPlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'specs_id': instance.specsId,
      'place_id': instance.placeId,
      'has_multiple_option': instance.hasMultipleOption,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'options': instance.options,
    };
