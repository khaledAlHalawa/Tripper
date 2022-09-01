

import 'package:app/features/auth/domain/entities/user.dart';
import 'package:app/features/profile/domain/repositories/user_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class  ShowUserUsecase implements UseCase<User, ShowUserParams>{
  ShowUserUsecase({required this.repository});

  final UserRepository repository;

  @override
  Future<Either<Failure, User>> call(ShowUserParams params) async =>
      repository.showUserInfo(params.userId);
}

class ShowUserParams{
  ShowUserParams({required this.userId});
  final String userId;
}