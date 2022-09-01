

import 'package:app/features/place/data/models/place_details.dart';
import 'package:app/features/place/domain/repositories/place_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class  ShowPlaceUsecase implements UseCase<PlaceDetailsModel, ShowPlaceParams>{
  ShowPlaceUsecase({required this.repository});

  final PlaceRepository repository;

  @override
  Future<Either<Failure, PlaceDetailsModel>> call(ShowPlaceParams params) async =>
      repository.showPlace(params.placeId);
}

class ShowPlaceParams{
  ShowPlaceParams({required this.placeId});

  final String placeId;
}