import 'package:freezed_annotation/freezed_annotation.dart';

part 'spec_pivot.freezed.dart';
part 'spec_pivot.g.dart';

@freezed
class SpecPivot with _$SpecPivot {
  const factory SpecPivot({
    @JsonKey(name: 'place_id') String? placeId,
    @JsonKey(name: 'specs_id') String? specsId,
  }) = _SpecPivot;

  factory SpecPivot.fromJson(Map<String, dynamic> json) => _$SpecPivotFromJson(json);
}