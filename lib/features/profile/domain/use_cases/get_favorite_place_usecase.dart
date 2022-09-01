import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';
import '../../../place/domain/entities/place.dart';
import '../repositories/user_repostory.dart';


@injectable
class  GetFavoritePlaceUsecase implements UseCase<List<Place>?, GetFavoritePlaceParams>{
  GetFavoritePlaceUsecase({required this.repository});

  final UserRepository repository;

  @override
  Future<Either<Failure, List<Place>?>> call(GetFavoritePlaceParams getFavoriteParams) async {
    return repository.getFavoritePlace(getFavoriteParams.param);
  }
}

class GetFavoritePlaceParams{
  GetFavoritePlaceParams();


  Map<String,dynamic> get param => {
    "favorable_type" : "place"
  };

}