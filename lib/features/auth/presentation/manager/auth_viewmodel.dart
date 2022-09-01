import 'dart:io';

import 'package:app/common/helper/show_message.dart';
import 'package:app/core/base/viewmodels/base_viewmodel.dart';
import 'package:app/features/auth/domain/use_cases/login_by_email_usecase.dart';
import 'package:app/features/auth/domain/use_cases/register_by_email_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import '../../../../core/error/failures.dart';
import '../../../app/domain/repositories/prefs_repository.dart';
import '../../domain/entities/user.dart';
import '../../domain/use_cases/logout_usecase.dart';

part 'auth_viewmodel.g.dart';

@injectable
class AuthViewmodel extends _AuthViewmodel with _$AuthViewmodel {
  AuthViewmodel(
    LoginByEmailUsecase loginByEmailUsecase,
    RegisterByEmailUsecase registerByEmailUsecase,
    PrefsRepository prefsRepository,
    LogoutUsecase logoutUsecase,
  ) : super(
          loginByEmailUsecase,
          registerByEmailUsecase,
          logoutUsecase,
          prefsRepository,
        );
}

abstract class _AuthViewmodel extends BaseViewmodel with Store {
  _AuthViewmodel(
    this._loginByEmailUsecase,
    this._registerByEmailUsecase,
    this._logoutUsecase,
    this._prefsRepository,
  );

  final LoginByEmailUsecase _loginByEmailUsecase;
  final RegisterByEmailUsecase _registerByEmailUsecase;
  final LogoutUsecase _logoutUsecase;

  final PrefsRepository _prefsRepository;

  @observable
  ObservableFuture<void>? userFuture;

  @action
  loginByEmail(LoginByEmailParams params, VoidCallback onSuccess) {
    userFuture = futureWrapper(
      () => _loginByEmailUsecase(params).then((value) => _onResponse(value, onSuccess)),
      useLoader: true,
    );
  }

  @action
  registerByEmail(RegisterByEmailParams params, VoidCallback onSuccess) {
    userFuture = futureWrapper(
      () => _registerByEmailUsecase(params).then((value) => _onResponse(value, onSuccess)),
      useLoader: true,
    );
  }

  @action
  logout(VoidCallback onSuccess) {
    futureWrapper(
      () => _logoutUsecase(LogoutParams()).then((value) => onLogout(value, onSuccess)),
      useLoader: true,
    );
  }

  _onResponse(Either<Failure, User> either, VoidCallback onSuccess) {
    either.fold(_onFailure, (user) => _onResult(user, onSuccess));
  }

  void _onFailure(Failure failure) {
    showMessage(failure.message);
    return;
  }

  void _onResult(User user, VoidCallback onSuccess) async {
    await _prefsRepository.setUser(user);
    onSuccess();
  }

  onLogout(Either<Failure, bool> either, VoidCallback onSuccess) {
    either.fold(
      (failure) => null,
      (isLogout) {
        if (isLogout) {
          _prefsRepository.clearUser();
          GetIt.I<Dio>().options.headers[HttpHeaders.authorizationHeader] = null;
          onSuccess.call();
        }
      },
    );
  }
}
