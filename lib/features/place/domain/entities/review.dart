import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../auth/domain/entities/user.dart';

part 'review.freezed.dart';
part 'review.g.dart';


@freezed
abstract class Review with _$Review {
  const factory Review({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'reviewable_type') String? reviewableType,
    @JsonKey(name: 'reviewable_id') String? reviewableId,
    int? review,
    String? comment,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    User? user,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
