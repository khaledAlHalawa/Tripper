import 'package:app/features/place/domain/repositories/place_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';
import '../../data/models/products_models.dart';


@injectable
class GetProductsUsecase implements UseCase<ProductsModel, GetProductsParams> {
  GetProductsUsecase({required this.repository});

  final PlaceRepository repository;

  @override
  Future<Either<Failure, ProductsModel>> call(GetProductsParams params) async => repository.getProducts(params.map);
}

class GetProductsParams implements BaseParams {
  GetProductsParams(this.page);
  final int page;

  @override
  Map<String, dynamic> get map => {'page': page.toString()};
}

abstract class BaseParams {
  Map<String, dynamic> get map;
}
