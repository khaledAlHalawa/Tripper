// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserViewmodel on _UserViewmodel, Store {
  late final _$profileFutureAtom =
      Atom(name: '_UserViewmodel.profileFuture', context: context);

  @override
  ObservableFuture<User?> get profileFuture {
    _$profileFutureAtom.reportRead();
    return super.profileFuture;
  }

  @override
  set profileFuture(ObservableFuture<User?> value) {
    _$profileFutureAtom.reportWrite(value, super.profileFuture, () {
      super.profileFuture = value;
    });
  }

  late final _$updateProfileImageFutureAtom =
      Atom(name: '_UserViewmodel.updateProfileImageFuture', context: context);

  @override
  ObservableFuture<bool?> get updateProfileImageFuture {
    _$updateProfileImageFutureAtom.reportRead();
    return super.updateProfileImageFuture;
  }

  @override
  set updateProfileImageFuture(ObservableFuture<bool?> value) {
    _$updateProfileImageFutureAtom
        .reportWrite(value, super.updateProfileImageFuture, () {
      super.updateProfileImageFuture = value;
    });
  }

  late final _$_UserViewmodelActionController =
      ActionController(name: '_UserViewmodel', context: context);

  @override
  dynamic fetchProfile() {
    final _$actionInfo = _$_UserViewmodelActionController.startAction(
        name: '_UserViewmodel.fetchProfile');
    try {
      return super.fetchProfile();
    } finally {
      _$_UserViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateProfileInfo(UpdateProfileParams params,
      {VoidCallback? onSuccess}) {
    final _$actionInfo = _$_UserViewmodelActionController.startAction(
        name: '_UserViewmodel.updateProfileInfo');
    try {
      return super.updateProfileInfo(params, onSuccess: onSuccess);
    } finally {
      _$_UserViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateProfilePhoto(UpdatePhotoProfileParams params,
      {VoidCallback? onSuccess}) {
    final _$actionInfo = _$_UserViewmodelActionController.startAction(
        name: '_UserViewmodel.updateProfilePhoto');
    try {
      return super.updateProfilePhoto(params, onSuccess: onSuccess);
    } finally {
      _$_UserViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic resetPassword(ResetPasswordParams params, {VoidCallback? onSuccess}) {
    final _$actionInfo = _$_UserViewmodelActionController.startAction(
        name: '_UserViewmodel.resetPassword');
    try {
      return super.resetPassword(params, onSuccess: onSuccess);
    } finally {
      _$_UserViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
profileFuture: ${profileFuture},
updateProfileImageFuture: ${updateProfileImageFuture}
    ''';
  }
}
