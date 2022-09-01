import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorable_trip.freezed.dart';
part 'favorable_trip.g.dart';

@freezed
abstract class FavorableTrip with _$FavorableTrip {
  const factory FavorableTrip({
    String? id,
    @JsonKey(name: "journey_category_id") String? journeyCategoryId,
    String? name,
    String? description,
    int? max,
    @JsonKey(name: "number_of_days") int? numberOfDays,
    String? note,
    bool? done,
    int? cost,
    String? type,
    String? status,
    @JsonKey(name: "started_at") DateTime? startedAt,
    @JsonKey(name: "ended_at")   DateTime? endedAt,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "deleted_at") DateTime? deletedAt,
  }) = _FavorableTrip;

  factory FavorableTrip.fromJson(Map<String, dynamic> json) => _$FavorableTripFromJson(json);
}






