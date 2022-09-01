

import 'package:app/features/city/domain/entities/country.dart';
import 'package:app/features/city/domain/repositories/city_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class  ShowCountryUsecase implements UseCase<Country, ShowCountryParams>{
  ShowCountryUsecase({required this.repository});

  final CityRepository repository;

  @override
  Future<Either<Failure, Country>> call(ShowCountryParams params) async =>
      repository.showCountry(params.countryId);
}

class ShowCountryParams{
  ShowCountryParams({required this.countryId});

  final int countryId;
}