import 'dart:io';

import 'package:app/features/profile/domain/repositories/user_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';



@injectable
class  UpdatePhotoProfileUsecase implements UseCase<bool, UpdatePhotoProfileParams>{
  UpdatePhotoProfileUsecase({required this.repository});

  final UserRepository repository;

  @override
  Future<Either<Failure, bool>> call(UpdatePhotoProfileParams params) async =>
      repository.updatePhoto(params.file);
}

class UpdatePhotoProfileParams{
  UpdatePhotoProfileParams({required this.file});
  final File file;
}