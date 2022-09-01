import 'package:app/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    String? message,
    @JsonKey(name: "data") User? user,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}