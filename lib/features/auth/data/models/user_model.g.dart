// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      message: json['message'] as String?,
      user: json['data'] == null
          ? null
          : User.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.user,
    };
