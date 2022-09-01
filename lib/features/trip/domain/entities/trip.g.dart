// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Trip _$$_TripFromJson(Map<String, dynamic> json) => _$_Trip(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      max: json['max'] as int?,
      numberOfDays: json['number_of_days'] as int?,
      type: json['type'] as String?,
      cost: json['cost'] as int?,
      status: json['status'] as String?,
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      endedAt: json['ended_at'] == null
          ? null
          : DateTime.parse(json['ended_at'] as String),
      category: json['category'] as String?,
      review: json['review'] as int?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      favorites: json['favorites'] as int?,
      stations: (json['stations'] as List<dynamic>?)
          ?.map((e) => Station.fromJson(e as Map<String, dynamic>))
          .toList(),
      favoritesRelation: (json['favorites_relation'] as List<dynamic>?)
          ?.map((e) => FavoriteRelation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TripToJson(_$_Trip instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'max': instance.max,
      'number_of_days': instance.numberOfDays,
      'type': instance.type,
      'cost': instance.cost,
      'status': instance.status,
      'started_at': instance.startedAt?.toIso8601String(),
      'ended_at': instance.endedAt?.toIso8601String(),
      'category': instance.category,
      'review': instance.review,
      'reviews': instance.reviews,
      'favorites': instance.favorites,
      'stations': instance.stations,
      'favorites_relation': instance.favoritesRelation,
    };
