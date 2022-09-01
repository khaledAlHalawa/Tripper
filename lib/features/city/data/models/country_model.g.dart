// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryModel _$$_CountryModelFromJson(Map<String, dynamic> json) =>
    _$_CountryModel(
      message: json['message'] as String?,
      countries: (json['data'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CountryModelToJson(_$_CountryModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.countries,
    };
