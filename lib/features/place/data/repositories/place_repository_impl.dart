import 'package:app/core/api/api.dart';
import 'package:app/core/error/failures.dart';
import 'package:app/features/place/data/models/place_model.dart';
import 'package:app/features/place/data/models/products_models.dart';
import 'package:app/features/place/domain/entities/place_type.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repositories/place_repostory.dart';
import '../data_sources/place_remote_datasource.dart';
import '../models/place_details.dart';

@LazySingleton(as: PlaceRepository)
class PlaceRepositoryImpl extends PlaceRepository with HandlingExceptionRequest{
  PlaceRepositoryImpl(PlaceRemoteDatasource datasource) : super(datasource);

  @override
  Future<Either<Failure, PlaceModel>> getPlaces(Map<String, dynamic> params) =>
      handlingExceptionRequest(requestCall: ()=> datasource.getPlaces(params));

  @override
  Future<Either<Failure, List<PlaceType>>> getPlacesType() =>
      handlingExceptionRequest(requestCall: datasource.getPlacesType);

  @override
  Future<Either<Failure, PlaceDetailsModel>> showPlace(String placeId) =>
      handlingExceptionRequest(requestCall: ()=> datasource.showPlace(placeId));

  @override
  Future<Either<Failure, PlaceType>> showPlaceType(String placeTypeId) =>
      handlingExceptionRequest(requestCall: ()=> datasource.showPlaceType(placeTypeId));

  @override
  Future<Either<Failure, ProductsModel>> getProducts(Map<String, dynamic> params) =>
      handlingExceptionRequest(requestCall: ()=> datasource.getProducts(params));

}