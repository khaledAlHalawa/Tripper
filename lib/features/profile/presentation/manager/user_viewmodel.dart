import 'package:app/core/base/viewmodels/base_viewmodel.dart';
import 'package:app/features/app/domain/repositories/prefs_repository.dart';
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:app/features/profile/domain/use_cases/add_reviews_usecase.dart';
import 'package:app/features/profile/domain/use_cases/favorite_usecase.dart';
import 'package:app/features/profile/domain/use_cases/get_profile_usecase.dart';
import 'package:app/features/profile/domain/use_cases/show_user_usecase.dart';
import 'package:app/features/profile/domain/use_cases/upload_photo_profile_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/error/failures.dart';
import '../../domain/use_cases/reset_password_usecase.dart';
import '../../domain/use_cases/update_profile_photo.dart';
import '../../domain/use_cases/update_profile_usecase.dart';

part 'user_viewmodel.g.dart';

@injectable
class UserViewmodel extends _UserViewmodel with _$UserViewmodel {
  UserViewmodel(
    AddReviewsUsecase addReviewsUsecase,
    FavoriteUsecase favoriteUsecase,
    GetProfileUsecase getProfileUsecase,
    ShowUserUsecase showUserUsecase,
    UpdateProfileUsecase updateProfileUsecase,
    UploadPhotoProfileUsecase uploadPhotoProfileUsecase,
    UpdatePhotoProfileUsecase updatePhotoProfileUsecase,
    ResetPasswordUsecase resetPasswordUsecase,
  ) : super(
          addReviewsUsecase,
          favoriteUsecase,
          getProfileUsecase,
          showUserUsecase,
          updateProfileUsecase,
          uploadPhotoProfileUsecase,
          updatePhotoProfileUsecase,
          resetPasswordUsecase,
        );
}

abstract class _UserViewmodel extends BaseViewmodel with Store {
  _UserViewmodel(
    this._addReviewsUsecase,
    this._favoriteUsecase,
    this._getProfileUsecase,
    this._showUserUsecase,
    this._updateProfileUsecase,
    this._uploadPhotoProfileUsecase,
    this._updatePhotoProfileUsecase,
    this._resetPasswordUsecase,
  );

  final PrefsRepository _prefsRepository = GetIt.I<PrefsRepository>();

  final AddReviewsUsecase _addReviewsUsecase;
  final FavoriteUsecase _favoriteUsecase;
  final GetProfileUsecase _getProfileUsecase;
  final ShowUserUsecase _showUserUsecase;
  final UpdateProfileUsecase _updateProfileUsecase;
  final UploadPhotoProfileUsecase _uploadPhotoProfileUsecase;
  final UpdatePhotoProfileUsecase _updatePhotoProfileUsecase;
  final ResetPasswordUsecase _resetPasswordUsecase;

  @observable
  ObservableFuture<User?> profileFuture = ObservableFuture.value(null);

  @observable
  ObservableFuture<bool?> updateProfileImageFuture = ObservableFuture.value(null);

  @action
  fetchProfile() {
    profileFuture = futureWrapper(() => _getProfileUsecase(GetProfileParams()).then(_onResponseProfile));
  }

  User _onResponseProfile(Either<Failure, User> either) {
    return either.fold(
      (l) => throw l,
      (user) {
        _prefsRepository.setUser(user);
        return user;
      },
    );
  }

  @action
  updateProfileInfo(UpdateProfileParams params, {VoidCallback? onSuccess}) {
    futureWrapper(
      () => _updateProfileUsecase(params).then(
        (value) {
          onSuccess?.call();
          profileFuture = ObservableFuture.value(profileFuture.value?.copyWith(
            firstName: params.firstname,
            lastName: params.lastname,
            cityId: int.parse(params.cityId!),
            gender: params.gender == "male" ? Gender.male : Gender.female,
          ));

          _prefsRepository.setUser(profileFuture.value!);
        },
      ),
      useLoader: true,
    );
  }

  @action
  updateProfilePhoto(UpdatePhotoProfileParams params, {VoidCallback? onSuccess}) {
    updateProfileImageFuture = futureWrapper(
      () => _updatePhotoProfileUsecase(params).then((value) {
        return value.fold(
          (l) => throw l,
          (r) {
            onSuccess?.call();
            fetchProfile();
            return r;
          },
        );
      }),
      useLoader: true,
    );
  }

  @action
  resetPassword(ResetPasswordParams params, {VoidCallback? onSuccess}) {
    futureWrapper(
      () => _resetPasswordUsecase(params).then((value) => value.fold((l) => throw l, (r) => onSuccess?.call())),
      useLoader: true,
    );
  }
}
