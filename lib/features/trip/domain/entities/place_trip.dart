import 'package:app/features/place/domain/entities/review.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/data/models/media.dart';
import 'address.dart';

part 'place_trip.freezed.dart';
part 'place_trip.g.dart';


@freezed
abstract class PlaceTrip with _$PlaceTrip {
  const factory PlaceTrip({
    String? id,
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "place_type_id") String? placeTypeId,
    String? name,
    String? description,
    int? price,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ended_at') DateTime? endedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    Address? address,
    List<Review>? reviews,
    List<Media>? media,
  }) = _PlaceTrip;

  factory PlaceTrip.fromJson(Map<String, dynamic> json) => _$PlaceTripFromJson(json);
}


