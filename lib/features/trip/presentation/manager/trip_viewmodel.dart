import 'package:app/core/base/viewmodels/base_viewmodel.dart';
import 'package:app/features/app/data/models/favorite_relation.dart';
import 'package:app/features/app/domain/repositories/prefs_repository.dart';
import 'package:app/features/favorite/presentation/manager/favorite_viewmodel.dart';
import 'package:app/features/profile/domain/use_cases/delete_favorite_usecase.dart';
import 'package:app/features/trip/data/models/trip_model.dart';
import 'package:app/features/trip/domain/use_cases/get_trips_usecase.dart';
import 'package:app/features/trip/presentation/enums/trip_mode.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../../../core/error/failures.dart';
import '../../../place/domain/entities/review.dart';
import '../../../profile/domain/use_cases/add_reviews_usecase.dart';
import '../../../profile/domain/use_cases/favorite_usecase.dart';
import '../../../profile/presentation/enums/favorable_type.dart';
import '../../domain/entities/trip.dart';
import '../../domain/use_cases/get_categories_usecase.dart';

part 'trip_viewmodel.g.dart';

@injectable
class TripViewmodel extends _TripViewmodel with _$TripViewmodel {
  TripViewmodel(
    GetCategoriesUsecase getCategoriesUsecase,
    GetTripsUsecase getTripsUsecase,
    final AddReviewsUsecase addReviewsUsecase,
    final FavoriteUsecase favoriteUsecase,
    final DeleteFavoriteUsecase deleteFavoriteUsecase,
    final FavoriteViewmodel favoriteViewmodel,
  ) : super(
          getCategoriesUsecase,
          getTripsUsecase,
          addReviewsUsecase,
          favoriteUsecase,
          deleteFavoriteUsecase,
          favoriteViewmodel,
        );
}

abstract class _TripViewmodel extends BaseViewmodel with Store {
  _TripViewmodel(
    this._getCategoriesUsecase,
    this._getTripsUsecase,
    this._addReviewsUsecase,
    this._favoriteUsecase,
    this._deleteFavoriteUsecase,
    this._favoriteViewmodel,
  );

  final GetCategoriesUsecase _getCategoriesUsecase;
  final GetTripsUsecase _getTripsUsecase;
  final AddReviewsUsecase _addReviewsUsecase;
  final FavoriteUsecase _favoriteUsecase;
  final DeleteFavoriteUsecase _deleteFavoriteUsecase;

  final FavoriteViewmodel _favoriteViewmodel;

  final double minRange = 10000;
  final double maxRange = 200000;

  @observable
  double minValue = 10000;

  @observable
  double maxValue = 200000;

  @observable
  Map<String, String> selectedPlaces = <String, String>{};

  @observable
  DateRangePickerSelectionMode datePickerMode = DateRangePickerSelectionMode.range;

  @observable
  TripMode tripMode = TripMode.normal;

  @observable
  ObservableFuture<List<Trip>?> tripsFuture = ObservableFuture.value(null);

  @computed
  List<Trip>? get trips => tripsFuture.value;

  @observable
  ObservableFuture<bool> reviewFuture = ObservableFuture.value(false);

  final PrefsRepository _prefsRepository = GetIt.I<PrefsRepository>();

  @action
  void fetchTrips(GetTripsParams params, {VoidCallback? onSuccess}) {
    tripMode = params.isFilter ? TripMode.filter : TripMode.normal;

    tripsFuture = futureWrapper(
      () => _getTripsUsecase(params).then((either) => _onResponseTrips(either, onSuccess: onSuccess)),
      useLoader: true,
    );
  }

  List<Trip> _onResponseTrips(Either<Failure, TripModel> either, {VoidCallback? onSuccess}) {
    return either.fold(
      (l) => throw l,
      (r) {
        onSuccess?.call();
        return r.trips ?? [];
      },
    );
  }

  @action
  changeMinMaxValue(double minValue, double maxValue) {
    this.minValue = minValue;
    this.maxValue = maxValue;
  }

  @action
  addOrRemovePlaceEntry(MapEntry<String, String> entry) {
    bool isExist = selectedPlaces.keys.any((element) => element == entry.key);

    if (isExist) {
      selectedPlaces = selectedPlaces..removeWhere((key, value) => key == entry.key);
    } else {
      selectedPlaces = selectedPlaces..addEntries([entry]);
    }
  }

  @action
  void reviewTrip(int rating, String reviewableId, {String? comment, VoidCallback? onSuccessReview}) {
    final params = AddReviewsParams(
      review: rating,
      reviewableId: reviewableId,
      reviewableType: EntityAbleType.journey,
      comment: comment,
    );

    reviewFuture = futureWrapper(
      () => _addReviewsUsecase(params).then(
        (value) => onReviewResponse(value, params, onSuccessReview: onSuccessReview),
      ),
      useLoader: true,
    );
  }

  onReviewResponse(Either<Failure, bool> either, AddReviewsParams params, {VoidCallback? onSuccessReview}) {
    return either.fold(
      (l) => throw l,
      (r) {
        onSuccessReview?.call();

        if (r) {
          final trip = tripsFuture.value?.singleWhere((element) => element.id == params.reviewableId);

          List<Review> reviews = List.of(trip?.reviews ?? [])
            ..removeWhere((element) => element.user?.id == _prefsRepository.user?.id)
            ..add(
              Review(
                review: params.review,
                user: _prefsRepository.user,
                comment: params.comment,
                reviewableType: params.reviewableType.name,
              ),
            );

          final editList = tripsFuture.value?.map((e) {
            if (e.id == trip?.id) {
              return e.copyWith(reviews: reviews);
            }
            return e;
          }).toList();

          tripsFuture = ObservableFuture.value(editList);
        }
        return r;
      },
    );
  }

  @action
  void favoriteTrip({required final String favorableId}) {
    final isAlreadyFavorited = tripsFuture.value!.singleWhere((element) => element.id == favorableId).isFavorite;

    if (isAlreadyFavorited) {
      _deleteFavoriteLocal(favorableId);
    } else {
      _addFavoriteLocal(favorableId);
    }

    futureWrapper(
      () => isAlreadyFavorited
          ? _deleteFavoriteUsecase(DeleteFavoriteParams(favorableId: favorableId))
              .then((value) => onDeleteFavorite(value, favorableId))
          : _favoriteUsecase(FavoriteParams(favorableId: favorableId, favorableType: EntityAbleType.journey)).then(
              (value) => _onFavoriteAdded(value, favorableId),
            ),
    );
  }

  onDeleteFavorite(Either<Failure, bool> value, final String favorableId) {
    value.fold(
      (l) => _addFavoriteLocal(favorableId),
      (r) => null,
    );
  }

  _onFavoriteAdded(Either<Failure, bool> value, String favorableId) {
    value.fold(
      (l) => _deleteFavoriteLocal(favorableId),
      (r) => null,
    );
  }

  _addFavoriteLocal(String favorableId) {
    final editingFavorite = tripsFuture.value!.map((e) {
      if (e.id == favorableId) {
        return e.copyWith(favoritesRelation: [const FavoriteRelation()]);
      }
      return e;
    }).toList();

    tripsFuture = ObservableFuture.value(editingFavorite);


    _favoriteViewmodel.addToFavoriteTrip(editingFavorite.singleWhere((element) => element.id == favorableId));
  }

  _deleteFavoriteLocal(String favorableId) {
    final editingFavorite = tripsFuture.value!.map((e) {
      if (e.id == favorableId) {
        return e.copyWith(favoritesRelation: []);
      }
      return e;
    }).toList();


    tripsFuture = ObservableFuture.value(editingFavorite);

    _favoriteViewmodel.removeFromFavoriteTrip(editingFavorite.singleWhere((element) => element.id == favorableId));
  }
}
