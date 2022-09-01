// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Country _$$_CountryFromJson(Map<String, dynamic> json) => _$_Country(
      id: json['id'] as int?,
      name: json['name'] as String?,
      capital: json['capital'],
      countryCode: json['country_code'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'capital': instance.capital,
      'country_code': instance.countryCode,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
