import 'package:app/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class  LogoutUsecase implements UseCase<bool, LogoutParams>{
  LogoutUsecase({required this.repository});

  final AuthRepository repository;

  @override
  Future<Either<Failure, bool>> call(LogoutParams params) async {
    return repository.logout();
  }
}

class LogoutParams{
  LogoutParams();
}