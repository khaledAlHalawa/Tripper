import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../place/domain/entities/place.dart';

part 'favorite_place.freezed.dart';
part 'favorite_place.g.dart';

@freezed
abstract class FavoritePlace with _$FavoritePlace {
  const factory FavoritePlace({
    String? id,
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "favorable_type") String? favorableType,
    @JsonKey(name: "favorable_id") String? favorableId,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "deleted_at") DateTime? deletedAt,
    Place? favorable,
  }) = _FavoritePlace;

  factory FavoritePlace.fromJson(Map<String, dynamic> json) => _$FavoritePlaceFromJson(json);
}