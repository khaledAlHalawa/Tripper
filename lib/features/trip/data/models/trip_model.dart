import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../../../app/data/models/link.dart';
import '../../domain/entities/trip.dart';

part 'trip_model.freezed.dart';
part 'trip_model.g.dart';

TripModel tripModelFromJson(String str) => TripModel.fromJson(json.decode(str));

String tripModelToJson(TripModel data) => json.encode(data.toJson());


@freezed
class TripModel with _$TripModel {
  const factory TripModel({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'data') List<Trip>? trips,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    List<Link>? links,
    @JsonKey(name: 'next_page_url') dynamic nextPageUrl,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') dynamic prevPageUrl,
    int? to,
    int? total,
  }) = _TripModel;

  factory TripModel.fromJson(Map<String, dynamic> json) => _$TripModelFromJson(json);
}
