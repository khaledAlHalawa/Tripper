// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tripper_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TripperViewModel on _TripperViewmodel, Store {
  Computed<PagePosition>? _$pageComputed;

  @override
  PagePosition get page =>
      (_$pageComputed ??= Computed<PagePosition>(() => super.page,
              name: '_TripperViewmodel.page'))
          .value;
  Computed<ThemeData>? _$themeComputed;

  @override
  ThemeData get theme =>
      (_$themeComputed ??= Computed<ThemeData>(() => super.theme,
              name: '_TripperViewmodel.theme'))
          .value;

  late final _$_themeModeAtom =
      Atom(name: '_TripperViewmodel._themeMode', context: context);

  @override
  ThemeMode? get _themeMode {
    _$_themeModeAtom.reportRead();
    return super._themeMode;
  }

  @override
  set _themeMode(ThemeMode? value) {
    _$_themeModeAtom.reportWrite(value, super._themeMode, () {
      super._themeMode = value;
    });
  }

  late final _$_currentPageAtom =
      Atom(name: '_TripperViewmodel._currentPage', context: context);

  @override
  int get _currentPage {
    _$_currentPageAtom.reportRead();
    return super._currentPage;
  }

  @override
  set _currentPage(int value) {
    _$_currentPageAtom.reportWrite(value, super._currentPage, () {
      super._currentPage = value;
    });
  }

  late final _$_TripperViewmodelActionController =
      ActionController(name: '_TripperViewmodel', context: context);

  @override
  void changePage(int newPage) {
    final _$actionInfo = _$_TripperViewmodelActionController.startAction(
        name: '_TripperViewmodel.changePage');
    try {
      return super.changePage(newPage);
    } finally {
      _$_TripperViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeTheme(ThemeMode themeMode, {VoidCallback? onChangedTheme}) {
    final _$actionInfo = _$_TripperViewmodelActionController.startAction(
        name: '_TripperViewmodel.changeTheme');
    try {
      return super.changeTheme(themeMode, onChangedTheme: onChangedTheme);
    } finally {
      _$_TripperViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
page: ${page},
theme: ${theme}
    ''';
  }
}
