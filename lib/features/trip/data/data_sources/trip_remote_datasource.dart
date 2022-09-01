import 'package:app/core/base/datasource/base_datasource.dart';
import 'package:app/features/trip/domain/entities/category.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/constant/configuration/url_routes.dart';
import '../../../../core/api/base_api.dart';
import '../../../../core/api/methods/get.dart';
import '../models/trip_model.dart';

@injectable
class TripRemoteDatasource extends BaseRemoteDataSource {
  Future<TripModel> getTrips(Map<String, dynamic> params) async {
    GetClient<TripModel> getTrips = GetClient<TripModel>(
      requestPrams: RequestConfig<TripModel>(
        endpoint: EndPoints.tripEP,
        response: ResponseValue<TripModel>(fromJson: (json) => TripModel.fromJson(json['data'])),
        queryParameters: params,
      ),
    );

    return getTrips();
  }

  Future<List<Category>> getCategories() async {
    GetClient<List<Category>> getCategories = GetClient<List<Category>>(
        requestPrams: RequestConfig<List<Category>>(
      endpoint: EndPoints.categoryEP,
      response: ResponseValue<List<Category>>(
        fromJson: (json) =>
            (json['data'] as List<dynamic>?)?.map((e) => Category.fromJson(e as Map<String, dynamic>)).toList() ?? [],
      ),
    ));

    return getCategories();
  }
}
