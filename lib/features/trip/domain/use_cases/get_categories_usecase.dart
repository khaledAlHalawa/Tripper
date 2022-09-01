import 'package:app/features/trip/domain/repositories/trip_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';
import '../entities/category.dart';

@injectable
class  GetCategoriesUsecase implements UseCase<List<Category>, GetCategoriesParams>{
  GetCategoriesUsecase({required this.repository});

  final TripRepository repository;

  @override
  Future<Either<Failure, List<Category>>> call(GetCategoriesParams params) async =>
      repository.getCategories();
}

class GetCategoriesParams{
  GetCategoriesParams();
}