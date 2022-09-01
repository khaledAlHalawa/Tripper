import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'favorite_relation.freezed.dart';
part 'favorite_relation.g.dart';

FavoriteRelation favoriteRelationFromJson(String str) => FavoriteRelation.fromJson(json.decode(str));

@freezed
abstract class FavoriteRelation with _$FavoriteRelation {
  const factory FavoriteRelation({
    String? id,
    String? userId,
    String? favorableType,
    String? favorableId,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _FavoriteRelation;

  factory FavoriteRelation.fromJson(Map<String, dynamic> json) => _$FavoriteRelationFromJson(json);
}
