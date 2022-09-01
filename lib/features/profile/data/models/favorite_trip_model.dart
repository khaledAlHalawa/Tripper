// To parse this JSON data, do
//
//     final favoriteTrip = favoriteTripFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../../domain/entity/favorite_trip.dart';

part 'favorite_trip_model.freezed.dart';
part 'favorite_trip_model.g.dart';

FavoriteTripModel favoriteTripFromJson(String str) => FavoriteTripModel.fromJson(json.decode(str));

@freezed
abstract class FavoriteTripModel with _$FavoriteTripModel {
  const factory FavoriteTripModel({
    String? message,
    @JsonKey(name: "data") List<FavoriteTrip>? favorites,
  }) = _FavoriteTripModel;

  factory FavoriteTripModel.fromJson(Map<String, dynamic> json) => _$FavoriteTripModelFromJson(json);
}
