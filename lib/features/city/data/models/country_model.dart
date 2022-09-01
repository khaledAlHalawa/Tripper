import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../../domain/entities/country.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

CountryModel countryModelFromJson(String str) => CountryModel.fromJson(json.decode(str));

String countryModelToJson(CountryModel data) => json.encode(data.toJson());

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    String? message,
    @JsonKey(name: "data") List<Country>? countries,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);
}

