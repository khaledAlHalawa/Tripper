import 'package:app/core/api/api.dart';
import 'package:app/features/city/data/models/city_model.dart';
import 'package:app/features/city/data/models/country_model.dart';
import 'package:app/features/city/domain/entities/city.dart';
import 'package:injectable/injectable.dart';
import '../../../../common/constant/configuration/url_routes.dart';
import '../../../../core/base/datasource/base_datasource.dart';
import '../../domain/entities/country.dart';

@injectable
class CityRemoteDatasource extends BaseRemoteDataSource {

  Future<List<City>> getCities(int countryId) async {
    GetClient<List<City>> getCities = GetClient<List<City>>(
      requestPrams: RequestConfig<List<City>>(
        endpoint: EndPoints.citiesEP(countryId),
        response: ResponseValue<List<City>>(fromJson: (json) => CityModel.fromJson(json).cities ?? []),
      ),
    );

    return await getCities();
  }


  Future<List<Country>> getCountries() async {
    GetClient<List<Country>> getCountries = GetClient<List<Country>>(
      requestPrams: RequestConfig<List<Country>>(
        endpoint: EndPoints.countriesEp,
        response: ResponseValue<List<Country>>(fromJson: (json) => CountryModel.fromJson(json).countries ?? []),
      ),
    );

    return await getCountries();
  }


  Future<Country> getCountry(int countryId) async {
    GetClient<Country> getCountry = GetClient<Country>(
      requestPrams: RequestConfig<Country>(
        endpoint: EndPoints.showCountryEP(countryId),
        response: ResponseValue<Country>(fromJson: (json) => Country.fromJson(json['data'])),
      ),
    );

    return await getCountry();
  }

  Future<City> getCity(int countryId,int cityId) async {
    GetClient<City> getCity = GetClient<City>(
      requestPrams: RequestConfig<City>(
        endpoint: EndPoints.showCityEP(countryId, cityId),
        response: ResponseValue<City>(fromJson: (json) => City.fromJson(json['data'])),
      ),
    );

    return await getCity();
  }
}