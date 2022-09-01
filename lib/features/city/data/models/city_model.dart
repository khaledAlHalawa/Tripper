import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
import '../../domain/entities/city.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

CityModel cityModelFromJson(String str) => CityModel.fromJson(json.decode(str));

String cityModelToJson(CityModel data) => json.encode(data.toJson());

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    String? message,
    @JsonKey(name: 'data') List<City>? cities,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);
}

