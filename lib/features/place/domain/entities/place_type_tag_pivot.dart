import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_type_tag_pivot.freezed.dart';
part 'place_type_tag_pivot.g.dart';

@freezed
class PlaceTypeTagPivot with _$PlaceTypeTagPivot {
  const factory PlaceTypeTagPivot({
    @JsonKey(name: 'place_id') String? placeId,
    @JsonKey(name: 'place_type_tag_id') String? placeTypeTagId,
  }) = _PlaceTypeTagPivot;

  factory PlaceTypeTagPivot.fromJson(Map<String, dynamic> json) => _$PlaceTypeTagPivotFromJson(json);
}