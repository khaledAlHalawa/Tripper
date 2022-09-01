import 'package:app/features/place/domain/entities/place_type.dart';
import 'package:app/features/place/domain/repositories/place_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';


@injectable
class  GetPlacesTypeUsecase implements UseCase<List<PlaceType>, GetPlacesTypeParams>{
  GetPlacesTypeUsecase({required this.repository});

  final PlaceRepository repository;

  @override
  Future<Either<Failure, List<PlaceType>>> call(GetPlacesTypeParams params) async =>
      repository.getPlacesType();
}

class GetPlacesTypeParams{
  GetPlacesTypeParams();
}