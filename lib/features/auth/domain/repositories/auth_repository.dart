

import 'package:app/core/base/repositories/base_repository.dart';
import 'package:app/features/auth/data/data_sources/auth_remote_datasource.dart';
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';

abstract class AuthRepository extends BaseRepository<AuthRemoteDatasource>{
  AuthRepository(AuthRemoteDatasource datasource) : super(datasource);

  Future<Either<Failure,User>> auth(Map<String,dynamic> params,String endPoint);

  Future<Either<Failure,bool>> logout();
}