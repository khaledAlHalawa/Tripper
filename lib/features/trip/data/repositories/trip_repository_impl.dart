import 'package:app/core/api/api.dart';
import 'package:app/core/error/failures.dart';
import 'package:app/features/trip/data/models/trip_model.dart';
import 'package:app/features/trip/domain/entities/category.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repositories/trip_repostory.dart';
import '../data_sources/trip_remote_datasource.dart';

@LazySingleton(as: TripRepository)
class TripRepositoryImpl extends TripRepository with HandlingExceptionRequest{
  TripRepositoryImpl(TripRemoteDatasource datasource) : super(datasource);

  @override
  Future<Either<Failure, List<Category>>> getCategories() =>
      handlingExceptionRequest(requestCall: datasource.getCategories);

  @override
  Future<Either<Failure, TripModel>> getTrips(Map<String, dynamic> params) =>
      handlingExceptionRequest(requestCall: ()=> datasource.getTrips(params));

}