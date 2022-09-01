

import 'package:app/features/city/domain/entities/country.dart';
import 'package:app/features/city/domain/repositories/city_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class  GetCountriesUsecase implements UseCase<List<Country>, GetCountriesParams>{
  GetCountriesUsecase({required this.repository});

  final CityRepository repository;

  @override
  Future<Either<Failure, List<Country>>> call(GetCountriesParams params) async =>
      repository.getCountries();
}

class GetCountriesParams{
  GetCountriesParams();
}