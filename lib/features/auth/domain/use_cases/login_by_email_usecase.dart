import 'package:app/core/error/failures.dart';
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:app/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/constant/configuration/url_routes.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class LoginByEmailUsecase extends UseCase<User, LoginByEmailParams> {
  LoginByEmailUsecase(this.repository);

  final AuthRepository repository;
  @override
  Future<Either<Failure, User>> call(LoginByEmailParams params) {
    return repository.auth(params._getMap(), params._endPoint);
  }
}

class LoginByEmailParams {
  LoginByEmailParams(this.email, this.password);

  final String email;
  final String password;

  final String _endPoint = EndPoints.loginEP;

  Map<String, dynamic> _getMap() {
    return {
      'email': email,
      'password': password,
    };
  }
}
