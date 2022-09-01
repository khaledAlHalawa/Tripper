import 'package:freezed_annotation/freezed_annotation.dart';
part 'media.freezed.dart';
part 'media.g.dart';


@freezed
abstract class Media with _$Media {
  const factory Media({
    int? id,
   @JsonKey(name: 'model_type') String? modelType,
    @JsonKey(name: 'model_id') String? modelId,
    String? uuid,
    @JsonKey(name: 'collection_name') String? collectionName,
    String? name,
    @JsonKey(name: 'file_name')   String? fileName,
    @JsonKey(name: 'mime_type')   String? mimeType,
    String? disk,
    @JsonKey(name: 'conversions_disk')   String? conversionsDisk,
    int? size,
    List<dynamic>? manipulations,
    @JsonKey(name: 'custom_properties') List<dynamic>? customProperties,
    @JsonKey(name: 'generated_conversions')  List<dynamic>? generatedConversions,
    @JsonKey(name: 'responsive_images')   List<dynamic>? responsiveImages,
    @JsonKey(name: 'order_column')    int? orderColumn,
    @JsonKey(name: 'created_at')    DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'original_url') String? originalUrl,
    @JsonKey(name: 'preview_url') String? previewUrl,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}
