// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityModel _$$_CityModelFromJson(Map<String, dynamic> json) => _$_CityModel(
      message: json['message'] as String?,
      cities: (json['data'] as List<dynamic>?)
          ?.map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CityModelToJson(_$_CityModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.cities,
    };
