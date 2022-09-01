import 'package:app/features/place/domain/entities/review.dart';
import 'package:app/features/trip/domain/entities/station.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/data/models/favorite_relation.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';

@freezed
class Trip with _$Trip {
  const factory Trip({
    String? id,
    String? name,
    String? description,
    int? max,
    @JsonKey(name: 'number_of_days') int? numberOfDays,
    String? type,
    int? cost,
    String? status,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ended_at') DateTime? endedAt,
    String? category,
    int? review,
    List<Review>? reviews,
    int? favorites,
    List<Station>? stations,
    @JsonKey(name: 'favorites_relation') List<FavoriteRelation>? favoritesRelation,
  }) = _Trip;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

  const Trip._();

  bool get isFavorite => favoritesRelation?.isNotEmpty ?? false;
}
