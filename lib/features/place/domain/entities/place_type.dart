import 'package:app/features/place/domain/entities/place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';


part 'place_type.freezed.dart';
part 'place_type.g.dart';


@freezed
class PlaceType with _$PlaceType {
  factory PlaceType({
    String? id,
    String? name,
    dynamic icon,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(ignore: true)
    PagingController<int,Place>? pagingController,
  }) = _PlaceType;

  PlaceType._();


  factory PlaceType.fromJson(Map<String, dynamic> json) => _$PlaceTypeFromJson(json);
}