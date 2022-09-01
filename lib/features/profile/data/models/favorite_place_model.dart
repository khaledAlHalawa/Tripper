import 'package:app/features/profile/domain/entity/favorite_place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'favorite_place_model.freezed.dart';
part 'favorite_place_model.g.dart';

FavoritePlaceModel favoritePlaceFromJson(String str) => FavoritePlaceModel.fromJson(json.decode(str));

@freezed
abstract class FavoritePlaceModel with _$FavoritePlaceModel {
  const factory FavoritePlaceModel({
    String? message,
    @JsonKey(name: "data") List<FavoritePlace>? favorites,
  }) = _Favorite;

  factory FavoritePlaceModel.fromJson(Map<String, dynamic> json) => _$FavoritePlaceModelFromJson(json);
}




