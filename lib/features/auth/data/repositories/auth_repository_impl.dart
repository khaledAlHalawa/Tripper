import 'package:app/core/api/api.dart';
import 'package:app/core/error/failures.dart';
import 'package:app/features/auth/data/data_sources/auth_remote_datasource.dart';
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:app/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository with HandlingExceptionRequest {
  AuthRepositoryImpl(AuthRemoteDatasource datasource) : super(datasource);

  @override
  Future<Either<Failure, User>> auth(Map<String, dynamic> params , String endPoint) {
    return handlingExceptionRequest(requestCall: () => datasource.auth(params,endPoint));
  }

  @override
  Future<Either<Failure, bool>> logout() => handlingExceptionRequest(requestCall: datasource.logout);
}
