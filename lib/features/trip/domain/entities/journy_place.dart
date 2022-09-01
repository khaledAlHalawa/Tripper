import 'package:app/features/trip/domain/entities/place_trip.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'journy_place.freezed.dart';
part 'journy_place.g.dart';


@freezed
class JourneyPlace with _$JourneyPlace {
  const factory JourneyPlace({
    String? id,
    @JsonKey(name: 'journey_station_id') String? journeyStationId,
    @JsonKey(name: 'place_id') String? placeId,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ended_at')   DateTime? endedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    PlaceTrip? place,
  }) = _JourneyPlace;

  factory JourneyPlace.fromJson(Map<String, dynamic> json) => _$JourneyPlaceFromJson(json);
}
