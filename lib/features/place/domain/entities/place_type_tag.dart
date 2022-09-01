import 'package:app/features/place/domain/entities/place_type_tag_pivot.dart';
import 'package:app/features/place/domain/entities/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_type_tag.freezed.dart';
part 'place_type_tag.g.dart';

@freezed
class PlaceTypeTag with _$PlaceTypeTag {
  const factory PlaceTypeTag({
    String? id,
    @JsonKey(name: 'place_type_id') String? placeTypeId,
    @JsonKey(name: 'tag_id') String? tagId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    PlaceTypeTagPivot? pivot,
    Tag? tag,
  }) = _PlaceTypeTag;

  factory PlaceTypeTag.fromJson(Map<String, dynamic> json) => _$PlaceTypeTagFromJson(json);
}
