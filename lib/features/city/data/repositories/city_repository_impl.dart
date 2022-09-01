import 'package:app/core/api/api.dart';
import 'package:app/core/error/failures.dart';
import 'package:app/features/city/data/data_sources/city_remote_datasource.dart';
import 'package:app/features/city/domain/entities/city.dart';
import 'package:app/features/city/domain/entities/country.dart';
import 'package:app/features/city/domain/repositories/city_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CityRepository)
class CityRepositoryImpl extends CityRepository with HandlingExceptionRequest {
  CityRepositoryImpl(CityRemoteDatasource datasource) : super(datasource);

  @override
  Future<Either<Failure, List<City>>> getCities(int countryId) {
    return handlingExceptionRequest(requestCall: () => datasource.getCities(countryId));
  }

  @override
  Future<Either<Failure, List<Country>>> getCountries() =>
      handlingExceptionRequest(requestCall: datasource.getCountries);

  @override
  Future<Either<Failure, City>> showCity(int cityId, int countryId) =>
      handlingExceptionRequest(requestCall: () => datasource.getCity(countryId, cityId));

  @override
  Future<Either<Failure, Country>> showCountry(int countryId) =>
      handlingExceptionRequest(requestCall: () => datasource.getCountry(countryId));
}
