

import 'package:app/features/auth/domain/entities/user.dart';
import 'package:app/features/profile/domain/repositories/user_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class  GetProfileUsecase implements UseCase<User, GetProfileParams>{
  GetProfileUsecase({required this.repository});

  final UserRepository repository;

  @override
  Future<Either<Failure, User>> call(GetProfileParams params) async =>
      repository.getProfile();
}

class GetProfileParams{
  GetProfileParams();
}