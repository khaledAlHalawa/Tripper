import 'package:app/features/profile/domain/repositories/user_repostory.dart';
import 'package:app/features/profile/presentation/enums/favorable_type.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class FavoriteUsecase implements UseCase<bool, FavoriteParams> {
  FavoriteUsecase({required this.repository});

  final UserRepository repository;

  @override
  Future<Either<Failure, bool>> call(FavoriteParams params) async => repository.favorite(params.getMap());
}

class FavoriteParams {
  FavoriteParams({
    required this.favorableId,
    required this.favorableType,
  });

  final String favorableId;
  final EntityAbleType favorableType;

  Map<String, dynamic> getMap() => {
        "favorable_id": favorableId,
        "favorable_type": favorableType.name,
      };
}
