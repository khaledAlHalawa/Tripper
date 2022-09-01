import 'package:app/features/profile/domain/repositories/user_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class ResetPasswordUsecase implements UseCase<bool, ResetPasswordParams> {
  ResetPasswordUsecase({required this.repository});

  final UserRepository repository;

  @override
  Future<Either<Failure, bool>> call(ResetPasswordParams params) => repository.restPassword(params.map);
}

class ResetPasswordParams {
  ResetPasswordParams({
   required this.oldPassword,
   required this.newPassword,
   required this.confirmNewPassword,
  });

  final String oldPassword;
  final String newPassword;
  final String confirmNewPassword;


  Map<String,dynamic> get map => {
    'old_password': oldPassword,
    'password': newPassword,
    'password_confirmation': confirmNewPassword,
  };
}
