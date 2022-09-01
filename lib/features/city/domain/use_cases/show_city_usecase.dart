import 'package:app/features/city/domain/entities/city.dart';
import 'package:app/features/city/domain/repositories/city_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class ShowCityUsecase implements UseCase<City, ShowCityParams> {
  ShowCityUsecase({required this.repository});

  final CityRepository repository;

  @override
  Future<Either<Failure, City>> call(ShowCityParams params) async =>
      repository.showCity(params.cityId, params.countryId);
}

class ShowCityParams {
  ShowCityParams({
   required this.countryId,
   required this.cityId,
  });

  final int countryId;
  final int cityId;
}
