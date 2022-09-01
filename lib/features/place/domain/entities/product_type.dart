import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_type.freezed.dart';
part 'product_type.g.dart';

@freezed
abstract class ProductType with _$ProductType {
  const factory ProductType({
    String? id,
    @JsonKey(name: 'place_type_id') String? placeTypeId,
    String? name,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
  }) = _ProductType;

  factory ProductType.fromJson(Map<String, dynamic> json) => _$ProductTypeFromJson(json);
}