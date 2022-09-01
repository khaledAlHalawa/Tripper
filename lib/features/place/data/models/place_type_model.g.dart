// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceTypeModel _$$_PlaceTypeModelFromJson(Map<String, dynamic> json) =>
    _$_PlaceTypeModel(
      message: json['message'] as String?,
      places: (json['data'] as List<dynamic>?)
          ?.map((e) => PlaceType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlaceTypeModelToJson(_$_PlaceTypeModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.places,
    };
