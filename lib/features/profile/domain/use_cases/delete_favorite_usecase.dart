import 'package:app/features/profile/domain/repositories/user_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';

@injectable
class DeleteFavoriteUsecase implements UseCase<bool, DeleteFavoriteParams> {
  DeleteFavoriteUsecase({required this.repository});

  final UserRepository repository;

  @override
  Future<Either<Failure, bool>> call(DeleteFavoriteParams params) async => repository.deleteFavorite(params.getMap());
}

class DeleteFavoriteParams {
  DeleteFavoriteParams({
    required this.favorableId,
  });

  final String favorableId;

  Map<String, dynamic> getMap() => {
    "favorable_id": favorableId,
  };
}
