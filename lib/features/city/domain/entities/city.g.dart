// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_City _$$_CityFromJson(Map<String, dynamic> json) => _$_City(
      id: json['id'] as int?,
      name: json['name'] as String?,
      img: json['img'],
      description: json['description'],
      code: json['code'],
      longitude: json['longitude'],
      latitude: json['latitude'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      countryId: json['country_id'] as int?,
      medias: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CityToJson(_$_City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'description': instance.description,
      'code': instance.code,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'country_id': instance.countryId,
      'media': instance.medias,
    };
