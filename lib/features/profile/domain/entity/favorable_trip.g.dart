// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorable_trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavorableTrip _$$_FavorableTripFromJson(Map<String, dynamic> json) =>
    _$_FavorableTrip(
      id: json['id'] as String?,
      journeyCategoryId: json['journey_category_id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      max: json['max'] as int?,
      numberOfDays: json['number_of_days'] as int?,
      note: json['note'] as String?,
      done: json['done'] as bool?,
      cost: json['cost'] as int?,
      type: json['type'] as String?,
      status: json['status'] as String?,
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
    );

Map<String, dynamic> _$$_FavorableTripToJson(_$_FavorableTrip instance) =>
    <String, dynamic>{
      'id': instance.id,
      'journey_category_id': instance.journeyCategoryId,
      'name': instance.name,
      'description': instance.description,
      'max': instance.max,
      'number_of_days': instance.numberOfDays,
      'note': instance.note,
      'done': instance.done,
      'cost': instance.cost,
      'type': instance.type,
      'status': instance.status,
      'started_at': instance.startedAt?.toIso8601String(),
      'ended_at': instance.endedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
