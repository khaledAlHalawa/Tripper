import 'package:app/features/profile/domain/repositories/user_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class UpdateProfileUsecase implements UseCase<bool, UpdateProfileParams> {
  UpdateProfileUsecase({required this.repository});

  final UserRepository repository;

  @override
  Future<Either<Failure, bool>> call(UpdateProfileParams params) async =>
      repository.updateProfile(params.getMap());
}

class UpdateProfileParams {
  UpdateProfileParams({
    this.firstname,
    this.lastname,
    this.gender,
    this.cityId,
    this.name,
    this.img,
    this.birthday,
  });

  final String? firstname;
  final String? lastname;
  final String? gender;
  final String? cityId;
  final String? name;
  final String? img;
  final String? birthday;

  Map<String, dynamic> getMap() => {
        "first_name": firstname,
        "last_name": lastname,
        "gender": gender,
        "city_id": cityId,
        "name": name,
        "img": img,
        "birthday": birthday,
      };
}
