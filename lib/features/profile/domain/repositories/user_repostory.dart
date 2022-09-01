import 'dart:io';
import 'package:app/core/base/repositories/base_repository.dart';
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../place/domain/entities/place.dart';
import '../../../trip/domain/entities/trip.dart';
import '../../data/data_sources/user_remote_datasource.dart';


abstract class UserRepository extends BaseRepository<UserRemoteDatasource>{
  UserRepository(UserRemoteDatasource datasource) : super(datasource);


  Future<Either<Failure,User>> showUserInfo(String userId);
  Future<Either<Failure,User>> getProfile();
  Future<Either<Failure,bool>> updateProfile(Map<String,dynamic> params);
  Future<Either<Failure,String>> uploadPhoto(File file);
  Future<Either<Failure,bool>> updatePhoto(File file);
  Future<Either<Failure,bool>> favorite(Map<String,dynamic> params);
  Future<Either<Failure,bool>> deleteFavorite(Map<String,dynamic> params);
  Future<Either<Failure,bool>> review(Map<String,dynamic> params);
  Future<Either<Failure,List<Trip>?>> getFavoriteTrip(Map<String,dynamic> params);
  Future<Either<Failure,List<Place>?>> getFavoritePlace(Map<String,dynamic> params);
  Future<Either<Failure,bool>> restPassword(Map<String,dynamic> params);
}