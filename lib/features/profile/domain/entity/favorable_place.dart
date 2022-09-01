import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorable_place.freezed.dart';
part 'favorable_place.g.dart';

@freezed
abstract class FavorablePlace with _$FavorablePlace {
  const factory FavorablePlace({
    String? id,
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "place_type_id") String? placeTypeId,
    String? name,
    String? description,
    int? price,
    @JsonKey(name: "started_at") DateTime? startedAt,
    @JsonKey(name: "ended_at") DateTime? endedAt,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "deleted_at") DateTime? deletedAt,
  }) = _FavorablePlace;

  factory FavorablePlace.fromJson(Map<String, dynamic> json) => _$FavorablePlaceFromJson(json);
}