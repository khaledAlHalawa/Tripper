// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Place _$$_PlaceFromJson(Map<String, dynamic> json) => _$_Place(
      id: json['id'] as String?,
      name: json['name'] as String?,
      img: json['img'],
      placeType: json['place_type'] as String?,
      address: json['address'] as String?,
      streetAddress: json['street_address'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      comment: json['comment'] as int?,
      review: json['review'] as int?,
      favorites: json['favorites'] as int?,
      medias: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      favoritesRelation: (json['favorites_relation'] as List<dynamic>?)
          ?.map((e) => FavoriteRelation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'place_type': instance.placeType,
      'address': instance.address,
      'street_address': instance.streetAddress,
      'city': instance.city,
      'country': instance.country,
      'comment': instance.comment,
      'review': instance.review,
      'favorites': instance.favorites,
      'media': instance.medias,
      'favorites_relation': instance.favoritesRelation,
    };
