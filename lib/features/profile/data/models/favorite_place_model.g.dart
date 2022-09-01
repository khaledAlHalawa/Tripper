// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Favorite _$$_FavoriteFromJson(Map<String, dynamic> json) => _$_Favorite(
      message: json['message'] as String?,
      favorites: (json['data'] as List<dynamic>?)
          ?.map((e) => FavoritePlace.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FavoriteToJson(_$_Favorite instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.favorites,
    };
