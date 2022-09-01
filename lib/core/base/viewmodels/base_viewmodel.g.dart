// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BaseViewmodel on _BaseViewmodel, Store {
  late final _$isLoadingAtom =
      Atom(name: '_BaseViewmodel.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$navigatorAtom =
      Atom(name: '_BaseViewmodel.navigator', context: context);

  @override
  NavOrder<dynamic>? get navigator {
    _$navigatorAtom.reportRead();
    return super.navigator;
  }

  @override
  set navigator(NavOrder<dynamic>? value) {
    _$navigatorAtom.reportWrite(value, super.navigator, () {
      super.navigator = value;
    });
  }

  late final _$contextHandlerAtom =
      Atom(name: '_BaseViewmodel.contextHandler', context: context);

  @override
  ContextHandler<dynamic>? get contextHandler {
    _$contextHandlerAtom.reportRead();
    return super.contextHandler;
  }

  @override
  set contextHandler(ContextHandler<dynamic>? value) {
    _$contextHandlerAtom.reportWrite(value, super.contextHandler, () {
      super.contextHandler = value;
    });
  }

  late final _$connectionErrorAtom =
      Atom(name: '_BaseViewmodel.connectionError', context: context);

  @override
  String? get connectionError {
    _$connectionErrorAtom.reportRead();
    return super.connectionError;
  }

  @override
  set connectionError(String? value) {
    _$connectionErrorAtom.reportWrite(value, super.connectionError, () {
      super.connectionError = value;
    });
  }

  late final _$loadingRequestAsyncAction =
      AsyncAction('_BaseViewmodel.loadingRequest', context: context);

  @override
  Future<T> loadingRequest<T>(Future<T> Function() callback) {
    return _$loadingRequestAsyncAction
        .run(() => super.loadingRequest<T>(callback));
  }

  late final _$_BaseViewmodelActionController =
      ActionController(name: '_BaseViewmodel', context: context);

  @override
  void navigate({required NavOrder<dynamic> order}) {
    final _$actionInfo = _$_BaseViewmodelActionController.startAction(
        name: '_BaseViewmodel.navigate');
    try {
      return super.navigate(order: order);
    } finally {
      _$_BaseViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getContext(ContextHandler<dynamic> handler) {
    final _$actionInfo = _$_BaseViewmodelActionController.startAction(
        name: '_BaseViewmodel.getContext');
    try {
      return super.getContext(handler);
    } finally {
      _$_BaseViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void startLoading() {
    final _$actionInfo = _$_BaseViewmodelActionController.startAction(
        name: '_BaseViewmodel.startLoading');
    try {
      return super.startLoading();
    } finally {
      _$_BaseViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stopLoading() {
    final _$actionInfo = _$_BaseViewmodelActionController.startAction(
        name: '_BaseViewmodel.stopLoading');
    try {
      return super.stopLoading();
    } finally {
      _$_BaseViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showSnack(String message,
      {VoidCallback? action,
      Color backgroundColor = darkGrey,
      Color disabledTextColor = white,
      Color textColor = white,
      Duration duration = const Duration(minutes: 10),
      GlobalKey<ScaffoldState>? scaffoldKey}) {
    final _$actionInfo = _$_BaseViewmodelActionController.startAction(
        name: '_BaseViewmodel.showSnack');
    try {
      return super.showSnack(message,
          action: action,
          backgroundColor: backgroundColor,
          disabledTextColor: disabledTextColor,
          textColor: textColor,
          duration: duration,
          scaffoldKey: scaffoldKey);
    } finally {
      _$_BaseViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleLoading() {
    final _$actionInfo = _$_BaseViewmodelActionController.startAction(
        name: '_BaseViewmodel.toggleLoading');
    try {
      return super.toggleLoading();
    } finally {
      _$_BaseViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
navigator: ${navigator},
contextHandler: ${contextHandler},
connectionError: ${connectionError}
    ''';
  }
}
