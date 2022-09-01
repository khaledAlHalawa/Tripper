// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as String?,
      productTypeId: json['product_type_id'] as String?,
      placeId: json['place_id'] as String?,
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
      productType: json['product_type'] == null
          ? null
          : ProductType.fromJson(json['product_type'] as Map<String, dynamic>),
      place: json['place'] == null
          ? null
          : Place.fromJson(json['place'] as Map<String, dynamic>),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_type_id': instance.productTypeId,
      'place_id': instance.placeId,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'product_type': instance.productType,
      'place': instance.place,
      'media': instance.media,
      'price': instance.price,
    };
