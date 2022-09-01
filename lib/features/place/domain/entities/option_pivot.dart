
import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_pivot.freezed.dart';
part 'option_pivot.g.dart';


@freezed
class OptionPivot with _$OptionPivot {
  const factory OptionPivot({
    @JsonKey(name: 'specs_place_id') String? specsPlaceId,
    @JsonKey(name: 'option_id') String? optionId,
  }) = _OptionPivot;

  factory OptionPivot.fromJson(Map<String, dynamic> json) => _$OptionPivotFromJson(json);
}