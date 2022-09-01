
import 'package:app/generated/locale_keys.g.dart';

enum PagePosition {
  home,
  search,
  favorite,
  profile,
}

extension PagePositionUtils on PagePosition{

  String get appBarTitle{
    switch(this){
      case PagePosition.home:
        return '';
      case PagePosition.search:
        return LocaleKeys.search_lbl_appbar_title;
      case PagePosition.favorite:
        return LocaleKeys.favorite_lbl_appbar_title;
      case PagePosition.profile:
        return '';
    }
  }
}