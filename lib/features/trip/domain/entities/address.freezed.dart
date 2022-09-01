// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "addressable_type")
  String? get addressableType => throw _privateConstructorUsedError;
  @JsonKey(name: "addressable_id")
  String? get addressableId => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "street_address")
  String? get streetAddress => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "postal_code")
  String? get postalCode => throw _privateConstructorUsedError;
  @JsonKey(name: "is_default")
  int? get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  int? get cityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: "addressable_type") String? addressableType,
      @JsonKey(name: "addressable_id") String? addressableId,
      String? address,
      @JsonKey(name: "street_address") String? streetAddress,
      double? longitude,
      double? latitude,
      @JsonKey(name: "postal_code") String? postalCode,
      @JsonKey(name: "is_default") int? isDefault,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'city_id') int? cityId});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? addressableType = freezed,
    Object? addressableId = freezed,
    Object? address = freezed,
    Object? streetAddress = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? postalCode = freezed,
    Object? isDefault = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      addressableType: addressableType == freezed
          ? _value.addressableType
          : addressableType // ignore: cast_nullable_to_non_nullable
              as String?,
      addressableId: addressableId == freezed
          ? _value.addressableId
          : addressableId // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress: streetAddress == freezed
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: isDefault == freezed
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: "addressable_type") String? addressableType,
      @JsonKey(name: "addressable_id") String? addressableId,
      String? address,
      @JsonKey(name: "street_address") String? streetAddress,
      double? longitude,
      double? latitude,
      @JsonKey(name: "postal_code") String? postalCode,
      @JsonKey(name: "is_default") int? isDefault,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'city_id') int? cityId});
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, (v) => _then(v as _$_Address));

  @override
  _$_Address get _value => super._value as _$_Address;

  @override
  $Res call({
    Object? id = freezed,
    Object? addressableType = freezed,
    Object? addressableId = freezed,
    Object? address = freezed,
    Object? streetAddress = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? postalCode = freezed,
    Object? isDefault = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_$_Address(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      addressableType: addressableType == freezed
          ? _value.addressableType
          : addressableType // ignore: cast_nullable_to_non_nullable
              as String?,
      addressableId: addressableId == freezed
          ? _value.addressableId
          : addressableId // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress: streetAddress == freezed
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: isDefault == freezed
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address implements _Address {
  const _$_Address(
      {this.id,
      @JsonKey(name: "addressable_type") this.addressableType,
      @JsonKey(name: "addressable_id") this.addressableId,
      this.address,
      @JsonKey(name: "street_address") this.streetAddress,
      this.longitude,
      this.latitude,
      @JsonKey(name: "postal_code") this.postalCode,
      @JsonKey(name: "is_default") this.isDefault,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'city_id') this.cityId});

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: "addressable_type")
  final String? addressableType;
  @override
  @JsonKey(name: "addressable_id")
  final String? addressableId;
  @override
  final String? address;
  @override
  @JsonKey(name: "street_address")
  final String? streetAddress;
  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  @JsonKey(name: "postal_code")
  final String? postalCode;
  @override
  @JsonKey(name: "is_default")
  final int? isDefault;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;
  @override
  @JsonKey(name: 'city_id')
  final int? cityId;

  @override
  String toString() {
    return 'Address(id: $id, addressableType: $addressableType, addressableId: $addressableId, address: $address, streetAddress: $streetAddress, longitude: $longitude, latitude: $latitude, postalCode: $postalCode, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, cityId: $cityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.addressableType, addressableType) &&
            const DeepCollectionEquality()
                .equals(other.addressableId, addressableId) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.streetAddress, streetAddress) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality().equals(other.isDefault, isDefault) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            const DeepCollectionEquality().equals(other.cityId, cityId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(addressableType),
      const DeepCollectionEquality().hash(addressableId),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(streetAddress),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(isDefault),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt),
      const DeepCollectionEquality().hash(cityId));

  @JsonKey(ignore: true)
  @override
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {final String? id,
      @JsonKey(name: "addressable_type") final String? addressableType,
      @JsonKey(name: "addressable_id") final String? addressableId,
      final String? address,
      @JsonKey(name: "street_address") final String? streetAddress,
      final double? longitude,
      final double? latitude,
      @JsonKey(name: "postal_code") final String? postalCode,
      @JsonKey(name: "is_default") final int? isDefault,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') final DateTime? deletedAt,
      @JsonKey(name: 'city_id') final int? cityId}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: "addressable_type")
  String? get addressableType;
  @override
  @JsonKey(name: "addressable_id")
  String? get addressableId;
  @override
  String? get address;
  @override
  @JsonKey(name: "street_address")
  String? get streetAddress;
  @override
  double? get longitude;
  @override
  double? get latitude;
  @override
  @JsonKey(name: "postal_code")
  String? get postalCode;
  @override
  @JsonKey(name: "is_default")
  int? get isDefault;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt;
  @override
  @JsonKey(name: 'city_id')
  int? get cityId;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}
