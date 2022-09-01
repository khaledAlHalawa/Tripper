import 'package:app/core/base/repositories/base_repository.dart';
import 'package:app/core/error/failures.dart';
import 'package:app/features/place/data/models/place_details.dart';
import 'package:app/features/place/domain/entities/place_type.dart';
import 'package:dartz/dartz.dart';
import '../../data/data_sources/place_remote_datasource.dart';
import '../../data/models/place_model.dart';
import '../../data/models/products_models.dart';


abstract class PlaceRepository extends BaseRepository<PlaceRemoteDatasource>{
  PlaceRepository(PlaceRemoteDatasource datasource) : super(datasource);


  Future<Either<Failure,List<PlaceType>>> getPlacesType();
  Future<Either<Failure,PlaceType>> showPlaceType(String placeTypeId);
  Future<Either<Failure,PlaceModel>> getPlaces(Map<String,dynamic> params);
  Future<Either<Failure,ProductsModel>> getProducts(Map<String,dynamic> params);
  Future<Either<Failure,PlaceDetailsModel>> showPlace(String placeId);
}