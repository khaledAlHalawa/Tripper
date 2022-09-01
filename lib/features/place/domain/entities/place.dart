import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numeral/numeral.dart';

import '../../../app/data/models/favorite_relation.dart';
import '../../../app/data/models/media.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
class Place with _$Place {
  factory Place({
    String? id,
    String? name,
    dynamic img,
    @JsonKey(name: 'place_type') String? placeType,
    String? address,
    @JsonKey(name: 'street_address') String? streetAddress,
    String? city,
    String? country,
    int? comment,
    int? review,
    int? favorites,
    @JsonKey(name: 'media') List<Media>? medias,
    @JsonKey(name: 'favorites_relation') List<FavoriteRelation>? favoritesRelation,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  const Place._();

  String get friendlyCommentCount => Numeral(comment ?? 0).format();
  String get friendlyLikeCount => Numeral(favorites ?? 0).format();
  bool get isFavorite => favoritesRelation?.isNotEmpty ?? false;
}