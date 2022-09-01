import 'package:app/core/base/repositories/base_repository.dart';
import 'package:app/core/error/failures.dart';
import 'package:app/features/trip/data/models/trip_model.dart';
import 'package:dartz/dartz.dart';

import '../../data/data_sources/trip_remote_datasource.dart';
import '../entities/category.dart';


abstract class TripRepository extends BaseRepository<TripRemoteDatasource>{
  TripRepository(TripRemoteDatasource datasource) : super(datasource);

  Future<Either<Failure,List<Category>>> getCategories();
  Future<Either<Failure,TripModel>> getTrips(Map<String,dynamic> params);
}