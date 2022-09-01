import 'dart:developer';

import 'package:app/core/base/viewmodels/base_viewmodel.dart';
import 'package:app/core/error/failures.dart';
import 'package:app/features/profile/domain/use_cases/get_favorite_place_usecase.dart';
import 'package:app/features/profile/domain/use_cases/get_favorite_trip_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../place/domain/entities/place.dart';
import '../../../trip/domain/entities/trip.dart';

part 'favorite_viewmodel.g.dart';

@injectable
class FavoriteViewmodel extends _FavoriteViewmodel with _$FavoriteViewmodel {
  FavoriteViewmodel(super.getFavoritePlaceUsecase, super.getFavoriteTripUsecase);
}

abstract class _FavoriteViewmodel extends BaseViewmodel with Store {
  _FavoriteViewmodel(this._getFavoritePlaceUsecase, this._getFavoriteTripUsecase);

  final GetFavoritePlaceUsecase _getFavoritePlaceUsecase;
  final GetFavoriteTripUsecase _getFavoriteTripUsecase;

  @observable
  ObservableFuture<List<Place>?> favoritePlaces = ObservableFuture.value(null);

  @observable
  ObservableFuture<List<Trip>?> favoriteTrips = ObservableFuture.value(null);

  @action
  void fetchFavoritePlaces() {
    favoritePlaces = futureWrapper(
        useLoader: true,
        () => _getFavoritePlaceUsecase(GetFavoritePlaceParams()).then((either) => _onThenFavoritePlaces(either)));
  }

  _onThenFavoritePlaces(Either<Failure, List<Place>?> either) {
    return either.fold(
      (l) => throw l,
      (r) => r ?? [],
    );
  }

  @action
  void fetchFavoriteTrips() {
    favoriteTrips = futureWrapper(
        useLoader: true,
        () => _getFavoriteTripUsecase(GetFavoriteTripParams()).then((either) => _onThenFavoriteTrips(either)));
  }

  _onThenFavoriteTrips(Either<Failure, List<Trip>?> either) {
    return either.fold(
      (l) => throw l,
      (r) => r ?? [],
    );
  }

  addToFavoritePlace(Place place) {
    favoritePlaces = ObservableFuture.value(List<Place>.of(favoritePlaces.value ?? [])..insert(0,place));
  }

  addToFavoriteTrip(Trip trip) {
    favoriteTrips = ObservableFuture.value(List<Trip>.of(favoriteTrips.value ?? [])..insert(0,trip));
  }

  removeFromFavoritePlace(Place place) {
    favoritePlaces = ObservableFuture.value(List<Place>.of(favoritePlaces.value ?? [])..removeWhere((element) => element.id == place.id));
  }

  removeFromFavoriteTrip(Trip trip) {
    favoriteTrips = ObservableFuture.value(List<Trip>.of(favoriteTrips.value ?? [])..removeWhere((element) => element.id == trip.id));
  }
}
