import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';
import '../../../trip/domain/entities/trip.dart';
import '../repositories/user_repostory.dart';


@injectable
class  GetFavoriteTripUsecase implements UseCase<List<Trip>?, GetFavoriteTripParams>{
  GetFavoriteTripUsecase({required this.repository});

  final UserRepository repository;

  @override
  Future<Either<Failure, List<Trip>?>> call(GetFavoriteTripParams getFavoriteParams) async {
    return await repository.getFavoriteTrip(getFavoriteParams.param);
  }
}

class GetFavoriteTripParams{
  GetFavoriteTripParams();


  Map<String,dynamic> get param => {
    "favorable_type" : "journey"
  };

}