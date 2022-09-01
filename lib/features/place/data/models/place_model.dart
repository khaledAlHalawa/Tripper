import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../../../app/data/models/link.dart';
import '../../domain/entities/place.dart';

part 'place_model.freezed.dart';
part 'place_model.g.dart';



PlaceModel placeModelFromJson(String str) => PlaceModel.fromJson(json.decode(str));

String placeModelToJson(PlaceModel data) => json.encode(data.toJson());

@freezed
class PlaceModel with _$PlaceModel {
  const factory PlaceModel({
   @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'data') List<Place>? places,
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
  }) = _PlaceModel;

  factory PlaceModel.fromJson(Map<String, dynamic> json) => _$PlaceModelFromJson(json);
}
