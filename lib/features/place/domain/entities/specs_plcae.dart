import 'package:freezed_annotation/freezed_annotation.dart';

import 'option.dart';

part 'specs_plcae.freezed.dart';
part 'specs_plcae.g.dart';
@freezed
class SpecsPlace with _$SpecsPlace {
  const factory SpecsPlace({
    String? id,
    @JsonKey(name: 'specs_id') String? specsId,
    @JsonKey(name: 'place_id') String? placeId,
    @JsonKey(name: 'has_multiple_option') bool? hasMultipleOption,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    List<Option>? options,
  }) = _SpecsPlace;

  factory SpecsPlace.fromJson(Map<String, dynamic> json) => _$SpecsPlaceFromJson(json);
}