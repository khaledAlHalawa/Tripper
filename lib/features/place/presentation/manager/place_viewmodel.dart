import 'package:app/common/constant/configuration/global.dart';
import 'package:app/core/base/viewmodels/base_viewmodel.dart';
import 'package:app/features/app/domain/repositories/prefs_repository.dart';
import 'package:app/features/favorite/presentation/manager/favorite_viewmodel.dart';
import 'package:app/features/place/data/models/place_model.dart';
import 'package:app/features/place/data/models/products_models.dart';
import 'package:app/features/place/domain/entities/place.dart';
import 'package:app/features/place/domain/entities/review.dart';
import 'package:app/features/place/domain/use_cases/get_place_type_usecase.dart';
import 'package:app/features/place/domain/use_cases/get_places_usecase.dart';
import 'package:app/features/place/domain/use_cases/get_products_usecase.dart';
import 'package:app/features/place/domain/use_cases/show_place_type_usecase.dart';
import 'package:app/features/place/domain/use_cases/show_place_usecase.dart';
import 'package:app/features/profile/domain/use_cases/add_reviews_usecase.dart';
import 'package:app/features/profile/presentation/enums/favorable_type.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/error/failures.dart';
import '../../../app/data/models/favorite_relation.dart';
import '../../../profile/domain/use_cases/delete_favorite_usecase.dart';
import '../../../profile/domain/use_cases/favorite_usecase.dart';
import '../../data/models/place_details.dart';
import '../../domain/entities/place_type.dart';
import '../../domain/entities/product.dart';
import '../enums/place_mode.dart';

part 'place_viewmodel.g.dart';

@injectable
class PlaceViewmodel extends _PlaceViewmodel with _$PlaceViewmodel {
  PlaceViewmodel(
    GetPlacesUsecase getPlacesUsecase,
    GetPlacesTypeUsecase getPlacesTypeUsecase,
    ShowPlaceUsecase showPlaceUsecase,
    ShowPlaceTypeUsecase showPlaceTypeUsecase,
    AddReviewsUsecase addReviewsUsecase,
    PrefsRepository prefsRepository,
    GetProductsUsecase getProductsUsecase,
    final FavoriteUsecase favoriteUsecase,
    final DeleteFavoriteUsecase deleteFavoriteUsecase,
    final FavoriteViewmodel favoriteViewmodel,
  ) : super(
          getPlacesUsecase,
          getPlacesTypeUsecase,
          showPlaceUsecase,
          showPlaceTypeUsecase,
          addReviewsUsecase,
          prefsRepository,
          getProductsUsecase,
          favoriteUsecase,
          deleteFavoriteUsecase,
          favoriteViewmodel,
        );
}

abstract class _PlaceViewmodel extends BaseViewmodel with Store {
  _PlaceViewmodel(
    this._getPlacesUsecase,
    this._getPlacesTypeUsecase,
    this._showPlaceUsecase,
    this._showPlaceTypeUsecase,
    this._addReviewsUsecase,
    this._prefsRepository,
    this._getProductsUsecase,
    this._favoriteUsecase,
    this._deleteFavoriteUsecase,
    this._favoriteViewmodel,
  );

  final GetPlacesUsecase _getPlacesUsecase;
  final GetPlacesTypeUsecase _getPlacesTypeUsecase;
  final ShowPlaceUsecase _showPlaceUsecase;
  final ShowPlaceTypeUsecase _showPlaceTypeUsecase;
  final AddReviewsUsecase _addReviewsUsecase;
  final PrefsRepository _prefsRepository;
  final GetProductsUsecase _getProductsUsecase;
  final FavoriteUsecase _favoriteUsecase;
  final DeleteFavoriteUsecase _deleteFavoriteUsecase;
  final FavoriteViewmodel _favoriteViewmodel;

  @observable
  PagingController<int, Place> pagingController =
      PagingController(firstPageKey: 1, invisibleItemsThreshold: invisibleItemsThreshold);

  @observable
  ObservableFuture<PlaceDetailsModel?> getPlaceDetailsFuture = ObservableFuture.value(null);

  @observable
  bool refreshListPagination = false;

  @observable
  ObservableFuture<List<Place>?> placeFuture = ObservableFuture.value(null);

  @observable
  ObservableFuture<List<PlaceType>?> placesTypeFuture = ObservableFuture.value(null);

  @observable
  ObservableFuture<bool> reviewFuture = ObservableFuture.value(false);

  @observable
  PlaceMode placeMode = PlaceMode.normal;

  @observable
  ObservableFuture<List<Product>?> productsFuture = ObservableFuture.value(null);

  @computed
  List<PlaceType>? get placesType => placesTypeFuture.value ?? [];

  @action
  void changeStatusPagination() {
    refreshListPagination = !refreshListPagination;
  }

  @action
  void fetchPlaces(
    GetPlacesParams params,
    int pageKey, {
    ValueChanged<List<Place>>? onGetPlaces,
    int? index,
    PlaceMode mode = PlaceMode.normal,
  }) {
    placeMode = mode;
    placeFuture = futureWrapper(
      () => _getPlacesUsecase(params).then((value) => _onResponsePlaces(value, pageKey, onGetPlaces)),
    );
  }

  @action
  void fetchProducts(
    int pageKey, {
    ValueChanged<List<Product>>? onGetPage,
  }) {
    productsFuture = futureWrapper(
      () => _getProductsUsecase(GetProductsParams(pageKey)).then(
        (value) => _onResponseProducts(value, onGetPage),
      ),
    );
  }

  List<Place> _onResponsePlaces(
    Either<Failure, PlaceModel> either,
    int pageKey,
    ValueChanged<List<Place>>? onGetPlaces,
  ) {
    return either.fold(
      (l) => throw l,
      (newPlaces) {
        final list = newPlaces.places ?? [];
        _handlePagination(pagingController, list, pageKey);
        onGetPlaces?.call(list);
        return list;
      },
    );
  }

  @action
  fetchPlacesType({ValueChanged<List<PlaceType>>? onSuccess}) {
    placesTypeFuture = futureWrapper(
      () => _getPlacesTypeUsecase(GetPlacesTypeParams()).then((value) => _onResponsePlacesType(value, onSuccess)),
    );
  }

  @action
  void fetchPlaceDetails(ShowPlaceParams params) {
    getPlaceDetailsFuture = futureWrapper(
      () => _showPlaceUsecase(params).then((value) => _onResponsePlaceDetails(value)),
    );
  }

  List<PlaceType> _onResponsePlacesType(Either<Failure, List<PlaceType>> either, Function(List<PlaceType>)? onSuccess) {
    return either.fold(
      (l) => throw l,
      (r) {
        onSuccess?.call(r);
        return r
            .map((e) => e.copyWith(
                pagingController: PagingController(firstPageKey: 1, invisibleItemsThreshold: invisibleItemsThreshold)))
            .toList();
      },
    );
  }

  @action
  void reviewPlace(int rating, String reviewableId, {String? comment, VoidCallback? onSuccessReview}) {
    final params = AddReviewsParams(
      review: rating,
      reviewableId: reviewableId,
      reviewableType: EntityAbleType.place,
      comment: comment,
    );

    reviewFuture = futureWrapper(
        () => _addReviewsUsecase(params).then(
              (value) => onReviewResponse(value, params, onSuccessReview: onSuccessReview),
            ),
        useLoader: true);
  }

  _handlePagination(PagingController controller, List<Place> list, int pageKey) {
    try {
      final isLastPage = list.length < perPageSize;
      if (isLastPage) {
        controller.appendLastPage(list);
      } else {
        final nextPageKey = ++pageKey;
        controller.appendPage(list, nextPageKey);
      }
    } catch (error) {
      controller.error = error;
    }
  }

  _onResponsePlaceDetails(Either<Failure, PlaceDetailsModel> either) {
    return either.fold(
      (l) => throw l,
      (r) => r,
    );
  }

  onReviewResponse(Either<Failure, bool> either, AddReviewsParams params, {VoidCallback? onSuccessReview}) {
    return either.fold(
      (l) => throw l,
      (r) {
        onSuccessReview?.call();

        if (r) {
          List<Review> reviews = List.of(getPlaceDetailsFuture.value?.reviews ?? [])
            ..removeWhere((element) => element.user?.id == _prefsRepository.user?.id)
            ..add(Review(
              review: params.review,
              user: _prefsRepository.user,
              comment: params.comment,
              reviewableType: params.reviewableType.name,
            ));

          getPlaceDetailsFuture =
              ObservableFuture.value(getPlaceDetailsFuture.value?.copyWith(reviews: reviews, canAddReview: false));

          var editablePlace =
              placeFuture.value?.singleWhere((element) => element.id == getPlaceDetailsFuture.value?.id);
          editablePlace = editablePlace?.copyWith(
            comment: (editablePlace.comment ?? 0) + 1,
            review: ((editablePlace.review ?? 0) + params.review) ~/ 2,
          );

          List<Place> places =
              placeFuture.value?.map((e) => e.id == editablePlace?.id ? editablePlace! : e).toList() ?? [];
          placeFuture = ObservableFuture.value(places);
        }
        return r;
      },
    );
  }

  _onResponseProducts(Either<Failure, ProductsModel> value, ValueChanged<List<Product>>? onGetPage) {
    value.fold(
      (l) => throw l,
      (r) => onGetPage?.call(r.products ?? []),
    );
  }

  @action
  void favoritePlace({required final String favorableId}) {
    final isAlreadyFavorited = placeFuture.value!.singleWhere((element) => element.id == favorableId).isFavorite;

    if (isAlreadyFavorited) {
      _deleteFavoriteLocal(favorableId);
    } else {
      _addFavoriteLocal(favorableId);
    }

    futureWrapper(
      () => isAlreadyFavorited
          ? _deleteFavoriteUsecase(DeleteFavoriteParams(favorableId: favorableId))
              .then((value) => onDeleteFavorite(value, favorableId))
          : _favoriteUsecase(FavoriteParams(favorableId: favorableId, favorableType: EntityAbleType.place)).then(
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
    final editingFavorite = placeFuture.value!.map((e) {
      if (e.id == favorableId) {
        return e.copyWith(favoritesRelation: [const FavoriteRelation()], favorites: (e.favorites ?? 0) + 1);
      }
      return e;
    }).toList();

    placeFuture = ObservableFuture.value(editingFavorite);
    _favoriteViewmodel.addToFavoritePlace(editingFavorite.singleWhere((element) => element.id == favorableId));
  }

  _deleteFavoriteLocal(String favorableId) {
    final editingFavorite = placeFuture.value!.map((e) {
      if (e.id == favorableId) {
        return e.copyWith(favoritesRelation: [], favorites: (e.favorites ?? 0) - 1);
      }
      return e;
    }).toList();

    placeFuture = ObservableFuture.value(editingFavorite);

    _favoriteViewmodel.removeFromFavoritePlace(editingFavorite.singleWhere((element) => element.id == favorableId));
  }
}
