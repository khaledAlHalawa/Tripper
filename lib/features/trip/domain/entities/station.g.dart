// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Station _$$_StationFromJson(Map<String, dynamic> json) => _$_Station(
      id: json['id'] as String?,
      journeyId: json['journey_id'] as String?,
      order: json['order'] as int?,
      name: json['name'] as String?,
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
      journeyPlaces: (json['journey_places'] as List<dynamic>?)
          ?.map((e) => JourneyPlace.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StationToJson(_$_Station instance) =>
    <String, dynamic>{
      'id': instance.id,
      'journey_id': instance.journeyId,
      'order': instance.order,
      'name': instance.name,
      'started_at': instance.startedAt?.toIso8601String(),
      'ended_at': instance.endedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'journey_places': instance.journeyPlaces,
    };
