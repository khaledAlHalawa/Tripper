import 'package:app/config/theme/tripper_theme.dart';
import 'package:app/core/base/viewmodels/base_viewmodel.dart';
import 'package:app/features/app/domain/repositories/prefs_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../utils/page_position.dart';
part 'tripper_viewmodel.g.dart';

@injectable
class TripperViewModel extends _TripperViewmodel with _$TripperViewModel {
  TripperViewModel(PrefsRepository prefsRepository) : super(prefsRepository);
}

abstract class _TripperViewmodel extends BaseViewmodel with Store {
  _TripperViewmodel(this._prefsRepository) {
    _themeMode = _getTheme;
  }

  final PrefsRepository _prefsRepository;

  //* OBSERVERS *//

  @observable
  ThemeMode? _themeMode;

  @observable
  int _currentPage = 0;

  //* COMPUTED *//

  @computed
  PagePosition get page => _pageMap[_currentPage]!;

  @computed
  ThemeData get theme => mapAppTheme[_themeMode]!;

  PersistentTabController controller = PersistentTabController();


  @action
  void changePage(int newPage) {
    if (_currentPage < _pageMap.keys.first || _currentPage > _pageMap.keys.last) {
      return;
    }
    _currentPage = newPage;
  }

  final _pageMap = <int, PagePosition>{
    0: PagePosition.home,
    // 1: PagePosition.search,
    1: PagePosition.favorite,
    2: PagePosition.profile,
  };

  ThemeMode get _getTheme => _prefsRepository.getTheme;

  @action
  void changeTheme(ThemeMode themeMode , {VoidCallback? onChangedTheme}) {
    _prefsRepository.setTheme(themeMode);
    _themeMode = themeMode;
    onChangedTheme?.call();
  }
}
