import 'package:freezed_annotation/freezed_annotation.dart';

import 'option_pivot.dart';

part 'option.freezed.dart';
part 'option.g.dart';

@freezed
class Option with _$Option {
  const factory Option({
    String? id,
    String? name,
    @JsonKey(name: 'specs_id') String? specsId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    OptionPivot? pivot,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}