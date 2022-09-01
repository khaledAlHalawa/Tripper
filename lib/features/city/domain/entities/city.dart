import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/data/models/media.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City {
  const factory City({
    int? id,
    String? name,
    dynamic img,
    dynamic description,
    dynamic code,
    dynamic longitude,
    dynamic latitude,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'country_id') int? countryId,
    @JsonKey(name: 'media') List<Media>? medias,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
