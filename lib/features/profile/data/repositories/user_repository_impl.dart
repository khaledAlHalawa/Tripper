import 'dart:io';

import 'package:app/core/api/api.dart';
import 'package:app/core/error/failures.dart';
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:app/features/profile/data/data_sources/user_remote_datasource.dart';
import 'package:app/features/profile/domain/repositories/user_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../place/domain/entities/place.dart';
import '../../../trip/domain/entities/trip.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl extends UserRepository with HandlingExceptionRequest {
  UserRepositoryImpl(UserRemoteDatasource datasource) : super(datasource);

  @override
  Future<Either<Failure, bool>> favorite(Map<String, dynamic> params) =>
      handlingExceptionRequest(requestCall: () => datasource.favorite(params));

  @override
  Future<Either<Failure, User>> getProfile() => handlingExceptionRequest(requestCall: datasource.getProfile);

  @override
  Future<Either<Failure, bool>> review(Map<String, dynamic> params) =>
      handlingExceptionRequest(requestCall: () => datasource.review(params));

  @override
  Future<Either<Failure, bool>> updateProfile(Map<String, dynamic> params) =>
      handlingExceptionRequest(requestCall: () => datasource.updateProfile(params));

  @override
  Future<Either<Failure, String>> uploadPhoto(File file) =>
      handlingExceptionRequest(requestCall: () => datasource.uploadProfilePhoto(file));

  @override
  Future<Either<Failure, User>> showUserInfo(String userId) =>
      handlingExceptionRequest(requestCall: () => datasource.showUserInfo(userId));

  @override
  Future<Either<Failure, List<Place>?>> getFavoritePlace(Map<String, dynamic> params) =>
      handlingExceptionRequest(requestCall: () => datasource.getFavoritePlace(params));

  @override
  Future<Either<Failure, List<Trip>?>> getFavoriteTrip(Map<String, dynamic> params) =>
      handlingExceptionRequest(requestCall: () => datasource.getFavoriteTrip(params));

  @override
  Future<Either<Failure, bool>> updatePhoto(File file) =>
      handlingExceptionRequest(requestCall: () => datasource.updateProfilePhoto(file));

  @override
  Future<Either<Failure, bool>> restPassword(Map<String, dynamic> params) =>
      handlingExceptionRequest(requestCall: () => datasource.resetPassword(params));

  @override
  Future<Either<Failure, bool>> deleteFavorite(Map<String, dynamic> params) =>
      handlingExceptionRequest(requestCall: ()=> datasource.deleteFavorite(params));
}
