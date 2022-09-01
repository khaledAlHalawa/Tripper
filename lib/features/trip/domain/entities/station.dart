import 'package:freezed_annotation/freezed_annotation.dart';
import 'journy_place.dart';

part 'station.freezed.dart';
part 'station.g.dart';

@freezed
class Station with _$Station {
  const factory Station({
    String? id,
    @JsonKey(name: 'journey_id') String? journeyId,
    int? order,
    String? name,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ended_at') DateTime? endedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'journey_places') List<JourneyPlace>? journeyPlaces,
  }) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) => _$StationFromJson(json);
}
