import 'package:app/features/city/domain/repositories/city_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';
import '../entities/city.dart';

@injectable
class  GetCitiesUsecase implements UseCase<List<City>, GetCitiesParams>{
  GetCitiesUsecase({required this.repository});

  final CityRepository repository;

  @override
  Future<Either<Failure, List<City>>> call(GetCitiesParams params) async {
       return repository.getCities(params.countryId);
  }
}

class GetCitiesParams{
  GetCitiesParams({this.countryId = 212});

  final int countryId;
}