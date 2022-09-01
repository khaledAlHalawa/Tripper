// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthViewmodel on _AuthViewmodel, Store {
  late final _$userFutureAtom =
      Atom(name: '_AuthViewmodel.userFuture', context: context);

  @override
  ObservableFuture<void>? get userFuture {
    _$userFutureAtom.reportRead();
    return super.userFuture;
  }

  @override
  set userFuture(ObservableFuture<void>? value) {
    _$userFutureAtom.reportWrite(value, super.userFuture, () {
      super.userFuture = value;
    });
  }

  late final _$_AuthViewmodelActionController =
      ActionController(name: '_AuthViewmodel', context: context);

  @override
  dynamic loginByEmail(LoginByEmailParams params, VoidCallback onSuccess) {
    final _$actionInfo = _$_AuthViewmodelActionController.startAction(
        name: '_AuthViewmodel.loginByEmail');
    try {
      return super.loginByEmail(params, onSuccess);
    } finally {
      _$_AuthViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic registerByEmail(
      RegisterByEmailParams params, VoidCallback onSuccess) {
    final _$actionInfo = _$_AuthViewmodelActionController.startAction(
        name: '_AuthViewmodel.registerByEmail');
    try {
      return super.registerByEmail(params, onSuccess);
    } finally {
      _$_AuthViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic logout(VoidCallback onSuccess) {
    final _$actionInfo = _$_AuthViewmodelActionController.startAction(
        name: '_AuthViewmodel.logout');
    try {
      return super.logout(onSuccess);
    } finally {
      _$_AuthViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userFuture: ${userFuture}
    ''';
  }
}
