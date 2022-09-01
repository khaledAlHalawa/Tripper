import 'package:app/core/base/datasource/base_datasource.dart';
import 'package:app/features/place/data/models/place_details.dart';
import 'package:app/features/place/data/models/place_model.dart';
import 'package:app/features/place/domain/entities/place_type.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/constant/configuration/url_routes.dart';
import '../../../../core/api/base_api.dart';
import '../../../../core/api/methods/get.dart';
import '../models/place_type_model.dart';
import '../models/products_models.dart';

@injectable
class PlaceRemoteDatasource extends BaseRemoteDataSource {

  Future<List<PlaceType>> getPlacesType() async {
    GetClient<List<PlaceType>> getPlacesType = GetClient<List<PlaceType>>(
      requestPrams: RequestConfig<List<PlaceType>>(
        endpoint: EndPoints.placesTypesEP,
        response: ResponseValue<List<PlaceType>>(fromJson: (json) => PlaceTypeModel.fromJson(json).places ?? []),
      ),
    );

    return getPlacesType();
  }

  Future<PlaceType> showPlaceType(String placeTypeId) async {
    GetClient<PlaceType> showPlaceType = GetClient<PlaceType>(
      requestPrams: RequestConfig<PlaceType>(
        endpoint: EndPoints.showPlaceTypeEP(placeTypeId),
        response: ResponseValue<PlaceType>(fromJson: (json) => PlaceType.fromJson(json['data'])),
      ),
    );

    return showPlaceType();
  }

  Future<PlaceDetailsModel> showPlace(String placeId) async {
    GetClient<PlaceDetailsModel> showPlace = GetClient<PlaceDetailsModel>(
      requestPrams: RequestConfig<PlaceDetailsModel>(
        endpoint: EndPoints.showPlaceEP(placeId),
        response: ResponseValue<PlaceDetailsModel>(fromJson: (json) => PlaceDetailsModel.fromJson(json['data'])),
      ),
    );

    return showPlace();
  }

  Future<PlaceModel> getPlaces(Map<String, dynamic> params) async {
    GetClient<PlaceModel> getPlaces = GetClient<PlaceModel>(
      requestPrams: RequestConfig<PlaceModel>(
        endpoint: EndPoints.placesEP,
        response: ResponseValue<PlaceModel>(fromJson: (json) => PlaceModel.fromJson(json['data'])),
        queryParameters: params,
      ),
    );

    return getPlaces();
  }

  Future<ProductsModel> getProducts(Map<String, dynamic> params) async {
    GetClient<ProductsModel> getProducts = GetClient<ProductsModel>(
      requestPrams: RequestConfig<ProductsModel>(
        endpoint: EndPoints.productsEP,
        response: ResponseValue<ProductsModel>(fromJson: (json) => ProductsModel.fromJson(json['data'])),
        queryParameters: params,
      ),
    );

    return getProducts();
  }


}
