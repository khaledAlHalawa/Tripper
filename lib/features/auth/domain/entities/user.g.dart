// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      img: json['img'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      userScope: $enumDecodeNullable(_$UserScopeEnumMap, json['user_scope']),
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'] == null
          ? null
          : DateTime.parse(json['email_verified_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'],
      cityId: json['city_id'] as int?,
      bearerToken: json['bearer_token'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'img': instance.img,
      'gender': _$GenderEnumMap[instance.gender],
      'birthday': instance.birthday?.toIso8601String(),
      'user_scope': _$UserScopeEnumMap[instance.userScope],
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt,
      'city_id': instance.cityId,
      'bearer_token': instance.bearerToken,
      'link': instance.link,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};

const _$UserScopeEnumMap = {
  UserScope.user: 'user',
  UserScope.admin: 'admin',
  UserScope.other: 'other',
};
