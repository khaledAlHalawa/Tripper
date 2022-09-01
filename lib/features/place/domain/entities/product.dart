import 'package:app/features/place/domain/entities/place.dart';
import 'package:app/features/place/domain/entities/product_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/data/models/media.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    String? id,
    @JsonKey(name: 'product_type_id') String? productTypeId,
    @JsonKey(name: 'place_id') String? placeId,
    String? name,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'product_type') ProductType? productType,
    Place? place,
    List<Media>? media,
    double? price,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
