import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
abstract class Address with _$Address {
  const factory Address({
    String? id,
    @JsonKey(name: "addressable_type") String? addressableType,
    @JsonKey(name: "addressable_id")   String? addressableId,
    String? address,
    @JsonKey(name: "street_address") String? streetAddress,
    double? longitude,
    double? latitude,
    @JsonKey(name: "postal_code") String? postalCode,
    @JsonKey(name: "is_default") int? isDefault,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'city_id') int? cityId,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}