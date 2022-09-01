import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';
import '../../data/models/place_model.dart';
import '../repositories/place_repostory.dart';

@injectable
class GetPlacesUsecase implements UseCase<PlaceModel, GetPlacesParams> {
  GetPlacesUsecase({required this.repository});

  final PlaceRepository repository;

  @override
  Future<Either<Failure, PlaceModel>> call(GetPlacesParams params) async => repository.getPlaces(params.getMap());
}

class GetPlacesParams {
  GetPlacesParams({
    this.filterPlaceTypeIds,
    this.filterTagIds,
    this.filterProductIds,
    this.filterSpecsIds,
    this.filterOptionIds,
    this.filterName,
    this.filterProductName,
    this.filterSpecsName,
    this.filterOptionName,
    this.filterReview,
    this.filterAddress,
    this.filterPlaceType,
    this.filterCityName,
    this.filterCountryName,
    this.filterCityIds,
    this.filterCountryIds,
    this.page,
  });

  final List<String>? filterPlaceTypeIds;
  final List<int>? filterTagIds;
  final List<int>? filterProductIds;
  final List<int>? filterSpecsIds;
  final List<int>? filterOptionIds;
  final String? filterName;
  final String? filterProductName;
  final String? filterSpecsName;
  final String? filterOptionName;
  final String? filterReview;
  final String? filterAddress;
  final String? filterPlaceType;
  final String? filterCityName;
  final String? filterCountryName;
  final List<int>? filterCityIds;
  final List<int>? filterCountryIds;
  final String? page;

  Map<String, dynamic> getMap() {
    final map = {
      "filter[place_type_id]": filterPlaceTypeIds,
      "filter[tag_id]": filterTagIds,
      "filter[product_id]": filterProductIds,
      "filter[specs_id]": filterSpecsIds,
      "filter[option_id]": filterOptionIds,
      "filter[name]": filterName,
      "filter[product_name]": filterProductName,
      "filter[specs_name]": filterSpecsName,
      "filter[option_name]": filterOptionName,
      "filter[review]": filterReview,
      "filter[address]": filterAddress,
      "filter[place_type]": filterPlaceType,
      "filter[city_name]": filterCityName,
      "filter[country_name]": filterCountryName,
      "filter[city_id]": filterCityIds,
      "filter[country_id]": filterCountryIds,
      "page": page,
    };
    return map..removeWhere((key, value) => value == null || value == "");
  }

  GetPlacesParams copyWith({String? page}) {
    return GetPlacesParams(
      page: page ?? this.page,
      filterPlaceTypeIds: filterPlaceTypeIds,
      filterTagIds: filterTagIds,
      filterProductIds: filterProductIds,
      filterSpecsIds: filterSpecsIds,
      filterOptionIds: filterOptionIds,
      filterName: filterName,
      filterProductName: filterProductName,
      filterSpecsName: filterSpecsName,
      filterOptionName: filterOptionName,
      filterReview: filterReview,
      filterAddress: filterAddress,
      filterPlaceType: filterPlaceType,
      filterCityName: filterCityName,
      filterCountryName: filterCountryName,
      filterCityIds: filterCityIds,
      filterCountryIds: filterCountryIds,
    );
  }
}
