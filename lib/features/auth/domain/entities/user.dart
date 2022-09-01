import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    String? id,
    String? name,
    String? username,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? img,
    Gender? gender,
    DateTime? birthday,
    @JsonKey(name: 'user_scope') UserScope? userScope,
    String? email,
    @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') dynamic deletedAt,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'bearer_token') String? bearerToken,
    String? link,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

enum UserScope {
  @JsonValue('user')
  user,
  @JsonValue('admin')
  admin,

  @JsonKey.nullForUndefinedEnumValue
  other,
}

enum Gender {
  @JsonValue('male')
  male,
  @JsonValue('female')
  female,
}

extension GenderUtils on Gender {
  String get translate {
    switch (this) {
      case Gender.male:
        return 'ذكر';
      case Gender.female:
        return 'أنثى';
    }
  }
}
