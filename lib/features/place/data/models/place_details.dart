import 'package:app/features/place/domain/entities/review.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../../../app/data/models/media.dart';
import '../../domain/entities/place_type_tag.dart';
import '../../domain/entities/product.dart';
import '../../domain/entities/spec.dart';
import '../../domain/entities/specs_plcae.dart';

part 'place_details.freezed.dart';
part 'place_details.g.dart';

PlaceDetailsModel placeDetailsModelFromJson(String str) => PlaceDetailsModel.fromJson(json.decode(str));

String placeDetailsModelToJson(PlaceDetailsModel data) => json.encode(data.toJson());

@freezed
class PlaceDetailsModel with _$PlaceDetailsModel {
  const factory PlaceDetailsModel({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'place_type_id') String? placeTypeId,
    String? name,
    String? description,
    int? price,
    dynamic img,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ended_at')   DateTime? endedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'place_type_tag') List<PlaceTypeTag>? placeTypeTag,
    List<Spec>? specs,
    @JsonKey(name: 'specs_place') List<SpecsPlace>? specsPlace,
    List<Product>? products,
    List<Review>? reviews,
    List<Media>? media,
    @JsonKey(ignore: true) bool? canAddReview,
  }) = _PlaceDetailsModel;

  factory PlaceDetailsModel.fromJson(Map<String, dynamic> json) => _$PlaceDetailsModelFromJson(json);
}














