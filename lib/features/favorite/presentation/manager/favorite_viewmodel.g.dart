// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FavoriteViewmodel on _FavoriteViewmodel, Store {
  late final _$favoritePlacesAtom =
      Atom(name: '_FavoriteViewmodel.favoritePlaces', context: context);

  @override
  ObservableFuture<List<Place>?> get favoritePlaces {
    _$favoritePlacesAtom.reportRead();
    return super.favoritePlaces;
  }

  @override
  set favoritePlaces(ObservableFuture<List<Place>?> value) {
    _$favoritePlacesAtom.reportWrite(value, super.favoritePlaces, () {
      super.favoritePlaces = value;
    });
  }

  late final _$favoriteTripsAtom =
      Atom(name: '_FavoriteViewmodel.favoriteTrips', context: context);

  @override
  ObservableFuture<List<Trip>?> get favoriteTrips {
    _$favoriteTripsAtom.reportRead();
    return super.favoriteTrips;
  }

  @override
  set favoriteTrips(ObservableFuture<List<Trip>?> value) {
    _$favoriteTripsAtom.reportWrite(value, super.favoriteTrips, () {
      super.favoriteTrips = value;
    });
  }

  late final _$_FavoriteViewmodelActionController =
      ActionController(name: '_FavoriteViewmodel', context: context);

  @override
  void fetchFavoritePlaces() {
    final _$actionInfo = _$_FavoriteViewmodelActionController.startAction(
        name: '_FavoriteViewmodel.fetchFavoritePlaces');
    try {
      return super.fetchFavoritePlaces();
    } finally {
      _$_FavoriteViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fetchFavoriteTrips() {
    final _$actionInfo = _$_FavoriteViewmodelActionController.startAction(
        name: '_FavoriteViewmodel.fetchFavoriteTrips');
    try {
      return super.fetchFavoriteTrips();
    } finally {
      _$_FavoriteViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
favoritePlaces: ${favoritePlaces},
favoriteTrips: ${favoriteTrips}
    ''';
  }
}
