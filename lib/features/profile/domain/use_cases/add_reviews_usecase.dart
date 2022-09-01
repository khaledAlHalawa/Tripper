import 'package:app/features/profile/domain/repositories/user_repostory.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_case/use_case.dart';
import '../../presentation/enums/favorable_type.dart';

@injectable
class AddReviewsUsecase implements UseCase<bool, AddReviewsParams> {
  AddReviewsUsecase({required this.repository});

  final UserRepository repository;

  @override
  Future<Either<Failure, bool>> call(AddReviewsParams params) async => await repository.review(params.getMap());
}

class AddReviewsParams {
  AddReviewsParams({
    required this.review,
    required this.reviewableId,
    required this.reviewableType,
    this.comment,
  });

  final int review;
  final String? comment;
  final String reviewableId;
  final EntityAbleType reviewableType;

  Map<String, dynamic> getMap() => {
        "review": review,
        "comment": comment,
        "reviewable_id": reviewableId,
        "reviewable_type": reviewableType.name,
      };
}
