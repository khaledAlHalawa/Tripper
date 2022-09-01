import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../../domain/entities/place_type.dart';

part 'place_type_model.freezed.dart';
part 'place_type_model.g.dart';

PlaceTypeModel placeTypeModelFromJson(String str) => PlaceTypeModel.fromJson(json.decode(str));

String placeTypeModelToJson(PlaceTypeModel data) => json.encode(data.toJson());

@freezed
class PlaceTypeModel with _$PlaceTypeModel {
  const factory PlaceTypeModel({
    String? message,
    @JsonKey(name: "data") List<PlaceType>? places,
  }) = _PlaceTypeModel;

  factory PlaceTypeModel.fromJson(Map<String, dynamic> json) => _$PlaceTypeModelFromJson(json);
}
