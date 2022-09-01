import 'package:app/features/place/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../../../app/data/models/link.dart';

part 'products_models.freezed.dart';
part 'products_models.g.dart';

ProductsModel tripModelFromJson(String str) => ProductsModel.fromJson(json.decode(str));

@freezed
class ProductsModel with _$ProductsModel {
  const factory ProductsModel({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'data') List<Product>? products,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    List<Link>? links,
    @JsonKey(name: 'next_page_url') dynamic nextPageUrl,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') dynamic prevPageUrl,
    int? to,
    int? total,
  }) = _ProductsModel;

  factory ProductsModel.fromJson(Map<String, dynamic> json) => _$ProductsModelFromJson(json);
}
