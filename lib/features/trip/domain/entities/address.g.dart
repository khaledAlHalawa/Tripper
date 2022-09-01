// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      id: json['id'] as String?,
      addressableType: json['addressable_type'] as String?,
      addressableId: json['addressable_id'] as String?,
      address: json['address'] as String?,
      streetAddress: json['street_address'] as String?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      postalCode: json['postal_code'] as String?,
      isDefault: json['is_default'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      cityId: json['city_id'] as int?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'id': instance.id,
      'addressable_type': instance.addressableType,
      'addressable_id': instance.addressableId,
      'address': instance.address,
      'street_address': instance.streetAddress,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'postal_code': instance.postalCode,
      'is_default': instance.isDefault,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'city_id': instance.cityId,
    };
