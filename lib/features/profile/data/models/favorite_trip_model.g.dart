// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoriteTripModel _$$_FavoriteTripModelFromJson(Map<String, dynamic> json) =>
    _$_FavoriteTripModel(
      message: json['message'] as String?,
      favorites: (json['data'] as List<dynamic>?)
          ?.map((e) => FavoriteTrip.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FavoriteTripModelToJson(
        _$_FavoriteTripModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.favorites,
    };
