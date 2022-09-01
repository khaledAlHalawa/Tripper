// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Media _$$_MediaFromJson(Map<String, dynamic> json) => _$_Media(
      id: json['id'] as int?,
      modelType: json['model_type'] as String?,
      modelId: json['model_id'] as String?,
      uuid: json['uuid'] as String?,
      collectionName: json['collection_name'] as String?,
      name: json['name'] as String?,
      fileName: json['file_name'] as String?,
      mimeType: json['mime_type'] as String?,
      disk: json['disk'] as String?,
      conversionsDisk: json['conversions_disk'] as String?,
      size: json['size'] as int?,
      manipulations: json['manipulations'] as List<dynamic>?,
      customProperties: json['custom_properties'] as List<dynamic>?,
      generatedConversions: json['generated_conversions'] as List<dynamic>?,
      responsiveImages: json['responsive_images'] as List<dynamic>?,
      orderColumn: json['order_column'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      originalUrl: json['original_url'] as String?,
      previewUrl: json['preview_url'] as String?,
    );

Map<String, dynamic> _$$_MediaToJson(_$_Media instance) => <String, dynamic>{
      'id': instance.id,
      'model_type': instance.modelType,
      'model_id': instance.modelId,
      'uuid': instance.uuid,
      'collection_name': instance.collectionName,
      'name': instance.name,
      'file_name': instance.fileName,
      'mime_type': instance.mimeType,
      'disk': instance.disk,
      'conversions_disk': instance.conversionsDisk,
      'size': instance.size,
      'manipulations': instance.manipulations,
      'custom_properties': instance.customProperties,
      'generated_conversions': instance.generatedConversions,
      'responsive_images': instance.responsiveImages,
      'order_column': instance.orderColumn,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'original_url': instance.originalUrl,
      'preview_url': instance.previewUrl,
    };
