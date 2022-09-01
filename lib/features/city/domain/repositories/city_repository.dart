import 'package:app/core/base/repositories/base_repository.dart';
import 'package:app/core/error/failures.dart';
import 'package:app/features/city/domain/entities/city.dart';
import 'package:app/features/city/domain/entities/country.dart';
import 'package:dartz/dartz.dart';
import '../../../city/data/data_sources/city_remote_datasource.dart';


abstract class CityRepository extends BaseRepository<CityRemoteDatasource>{
  CityRepository(CityRemoteDatasource datasource) : super(datasource);

  Future<Either<Failure,List<City>>> getCities(int countryId);
  Future<Either<Failure,List<Country>>> getCountries();
  Future<Either<Failure,Country>> showCountry(int countryId);
  Future<Either<Failure,City>> showCity(int cityId,int countryId);

}