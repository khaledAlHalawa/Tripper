import 'package:app/core/error/failures.dart';
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:app/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/constant/configuration/url_routes.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class RegisterByEmailUsecase extends UseCase<User, RegisterByEmailParams> {
  RegisterByEmailUsecase(this.repository);

  final AuthRepository repository;
  @override
  Future<Either<Failure, User>> call(RegisterByEmailParams params) {
    return repository.auth(params._getMap(), params._endPoint);
  }
}

class RegisterByEmailParams {
  RegisterByEmailParams({
    required this.email,
    required this.password,
    required this.passwordConfirmation,
    required this.firstname,
    required this.lastname,
    required this.gender,
    required this.cityId,
  });

  final String email;
  final String password;
  final String passwordConfirmation;
  final String firstname;
  final String lastname;
  final String gender;
  final int cityId;

  final String _endPoint = EndPoints.registerEP;

  Map<String, dynamic> _getMap() {
    return {
      'email': email,
      'password': password,
      'password_confirmation': passwordConfirmation,
      'first_name': firstname,
      'last_name': lastname,
      'gender': gender,
      'city_id': cityId,
    };
  }
}
