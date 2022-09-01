import 'dart:io';

import 'package:app/features/profile/domain/repositories/user_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class  UploadPhotoProfileUsecase implements UseCase<String, UploadPhotoProfileParams>{
  UploadPhotoProfileUsecase({required this.repository});

  final UserRepository repository;

  @override
  Future<Either<Failure, String>> call(UploadPhotoProfileParams params) async =>
      repository.uploadPhoto(params.file);
}

class UploadPhotoProfileParams{
  UploadPhotoProfileParams({required this.file});
  final File file;
}