// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceDetailsModel _$$_PlaceDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_PlaceDetailsModel(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      placeTypeId: json['place_type_id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as int?,
      img: json['img'],
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
      placeTypeTag: (json['place_type_tag'] as List<dynamic>?)
          ?.map((e) => PlaceTypeTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      specs: (json['specs'] as List<dynamic>?)
          ?.map((e) => Spec.fromJson(e as Map<String, dynamic>))
          .toList(),
      specsPlace: (json['specs_place'] as List<dynamic>?)
          ?.map((e) => SpecsPlace.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlaceDetailsModelToJson(
        _$_PlaceDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'place_type_id': instance.placeTypeId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'img': instance.img,
      'started_at': instance.startedAt?.toIso8601String(),
      'ended_at': instance.endedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'place_type_tag': instance.placeTypeTag,
      'specs': instance.specs,
      'specs_place': instance.specsPlace,
      'products': instance.products,
      'reviews': instance.reviews,
      'media': instance.media,
    };
