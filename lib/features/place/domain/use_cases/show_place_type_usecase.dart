import 'package:app/features/place/domain/entities/place_type.dart';
import 'package:app/features/place/domain/repositories/place_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class ShowPlaceTypeUsecase implements UseCase<PlaceType, ShowPlaceTypeParams> {
  ShowPlaceTypeUsecase({required this.repository});

  final PlaceRepository repository;

  @override
  Future<Either<Failure, PlaceType>> call(ShowPlaceTypeParams params) async =>
      repository.showPlaceType(params.placeTypeId);
}

class ShowPlaceTypeParams {
  ShowPlaceTypeParams({required this.placeTypeId});

  final String placeTypeId;
}
