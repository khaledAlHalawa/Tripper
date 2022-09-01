// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journy_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JourneyPlace _$$_JourneyPlaceFromJson(Map<String, dynamic> json) =>
    _$_JourneyPlace(
      id: json['id'] as String?,
      journeyStationId: json['journey_station_id'] as String?,
      placeId: json['place_id'] as String?,
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
      place: json['place'] == null
          ? null
          : PlaceTrip.fromJson(json['place'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JourneyPlaceToJson(_$_JourneyPlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'journey_station_id': instance.journeyStationId,
      'place_id': instance.placeId,
      'started_at': instance.startedAt?.toIso8601String(),
      'ended_at': instance.endedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'place': instance.place,
    };
