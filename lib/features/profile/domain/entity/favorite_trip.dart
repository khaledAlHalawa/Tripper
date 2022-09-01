import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../trip/domain/entities/trip.dart';

part 'favorite_trip.freezed.dart';
part 'favorite_trip.g.dart';

@freezed
abstract class FavoriteTrip with _$FavoriteTrip {
  const factory FavoriteTrip({
    String? id,
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "favorable_type") String? favorableType,
    @JsonKey(name: "favorable_id") String? favorableId,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "deleted_at") DateTime? deletedAt,
    Trip? favorable,
  }) = _FavoriteTrip;

  factory FavoriteTrip.fromJson(Map<String, dynamic> json) => _$FavoriteTripFromJson(json);
}
