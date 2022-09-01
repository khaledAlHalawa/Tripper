import 'package:app/features/place/domain/entities/spec_pivot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spec.freezed.dart';
part 'spec.g.dart';


@freezed
class Spec with _$Spec {
  const factory Spec({
    String? id,
    String? name,
    @JsonKey(name: 'place_type_id') String? placeTypeId,
    @JsonKey(name: 'has_multiple_option') bool? hasMultipleOption,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    SpecPivot? pivot,
  }) = _Spec;

  factory Spec.fromJson(Map<String, dynamic> json) => _$SpecFromJson(json);
}