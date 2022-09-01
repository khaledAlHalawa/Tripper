// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PlaceViewmodel on _PlaceViewmodel, Store {
  Computed<List<PlaceType>?>? _$placesTypeComputed;

  @override
  List<PlaceType>? get placesType => (_$placesTypeComputed ??=
          Computed<List<PlaceType>?>(() => super.placesType,
              name: '_PlaceViewmodel.placesType'))
      .value;

  late final _$pagingControllerAtom =
      Atom(name: '_PlaceViewmodel.pagingController', context: context);

  @override
  PagingController<int, Place> get pagingController {
    _$pagingControllerAtom.reportRead();
    return super.pagingController;
  }

  @override
  set pagingController(PagingController<int, Place> value) {
    _$pagingControllerAtom.reportWrite(value, super.pagingController, () {
      super.pagingController = value;
    });
  }

  late final _$getPlaceDetailsFutureAtom =
      Atom(name: '_PlaceViewmodel.getPlaceDetailsFuture', context: context);

  @override
  ObservableFuture<PlaceDetailsModel?> get getPlaceDetailsFuture {
    _$getPlaceDetailsFutureAtom.reportRead();
    return super.getPlaceDetailsFuture;
  }

  @override
  set getPlaceDetailsFuture(ObservableFuture<PlaceDetailsModel?> value) {
    _$getPlaceDetailsFutureAtom.reportWrite(value, super.getPlaceDetailsFuture,
        () {
      super.getPlaceDetailsFuture = value;
    });
  }

  late final _$refreshListPaginationAtom =
      Atom(name: '_PlaceViewmodel.refreshListPagination', context: context);

  @override
  bool get refreshListPagination {
    _$refreshListPaginationAtom.reportRead();
    return super.refreshListPagination;
  }

  @override
  set refreshListPagination(bool value) {
    _$refreshListPaginationAtom.reportWrite(value, super.refreshListPagination,
        () {
      super.refreshListPagination = value;
    });
  }

  late final _$placeFutureAtom =
      Atom(name: '_PlaceViewmodel.placeFuture', context: context);

  @override
  ObservableFuture<List<Place>?> get placeFuture {
    _$placeFutureAtom.reportRead();
    return super.placeFuture;
  }

  @override
  set placeFuture(ObservableFuture<List<Place>?> value) {
    _$placeFutureAtom.reportWrite(value, super.placeFuture, () {
      super.placeFuture = value;
    });
  }

  late final _$placesTypeFutureAtom =
      Atom(name: '_PlaceViewmodel.placesTypeFuture', context: context);

  @override
  ObservableFuture<List<PlaceType>?> get placesTypeFuture {
    _$placesTypeFutureAtom.reportRead();
    return super.placesTypeFuture;
  }

  @override
  set placesTypeFuture(ObservableFuture<List<PlaceType>?> value) {
    _$placesTypeFutureAtom.reportWrite(value, super.placesTypeFuture, () {
      super.placesTypeFuture = value;
    });
  }

  late final _$reviewFutureAtom =
      Atom(name: '_PlaceViewmodel.reviewFuture', context: context);

  @override
  ObservableFuture<bool> get reviewFuture {
    _$reviewFutureAtom.reportRead();
    return super.reviewFuture;
  }

  @override
  set reviewFuture(ObservableFuture<bool> value) {
    _$reviewFutureAtom.reportWrite(value, super.reviewFuture, () {
      super.reviewFuture = value;
    });
  }

  late final _$placeModeAtom =
      Atom(name: '_PlaceViewmodel.placeMode', context: context);

  @override
  PlaceMode get placeMode {
    _$placeModeAtom.reportRead();
    return super.placeMode;
  }

  @override
  set placeMode(PlaceMode value) {
    _$placeModeAtom.reportWrite(value, super.placeMode, () {
      super.placeMode = value;
    });
  }

  late final _$productsFutureAtom =
      Atom(name: '_PlaceViewmodel.productsFuture', context: context);

  @override
  ObservableFuture<List<Product>?> get productsFuture {
    _$productsFutureAtom.reportRead();
    return super.productsFuture;
  }

  @override
  set productsFuture(ObservableFuture<List<Product>?> value) {
    _$productsFutureAtom.reportWrite(value, super.productsFuture, () {
      super.productsFuture = value;
    });
  }

  late final _$_PlaceViewmodelActionController =
      ActionController(name: '_PlaceViewmodel', context: context);

  @override
  void changeStatusPagination() {
    final _$actionInfo = _$_PlaceViewmodelActionController.startAction(
        name: '_PlaceViewmodel.changeStatusPagination');
    try {
      return super.changeStatusPagination();
    } finally {
      _$_PlaceViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fetchPlaces(GetPlacesParams params, int pageKey,
      {ValueChanged<List<Place>>? onGetPlaces,
      int? index,
      PlaceMode mode = PlaceMode.normal}) {
    final _$actionInfo = _$_PlaceViewmodelActionController.startAction(
        name: '_PlaceViewmodel.fetchPlaces');
    try {
      return super.fetchPlaces(params, pageKey,
          onGetPlaces: onGetPlaces, index: index, mode: mode);
    } finally {
      _$_PlaceViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fetchProducts(int pageKey, {ValueChanged<List<Product>>? onGetPage}) {
    final _$actionInfo = _$_PlaceViewmodelActionController.startAction(
        name: '_PlaceViewmodel.fetchProducts');
    try {
      return super.fetchProducts(pageKey, onGetPage: onGetPage);
    } finally {
      _$_PlaceViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fetchPlacesType({ValueChanged<List<PlaceType>>? onSuccess}) {
    final _$actionInfo = _$_PlaceViewmodelActionController.startAction(
        name: '_PlaceViewmodel.fetchPlacesType');
    try {
      return super.fetchPlacesType(onSuccess: onSuccess);
    } finally {
      _$_PlaceViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fetchPlaceDetails(ShowPlaceParams params) {
    final _$actionInfo = _$_PlaceViewmodelActionController.startAction(
        name: '_PlaceViewmodel.fetchPlaceDetails');
    try {
      return super.fetchPlaceDetails(params);
    } finally {
      _$_PlaceViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reviewPlace(int rating, String reviewableId,
      {String? comment, VoidCallback? onSuccessReview}) {
    final _$actionInfo = _$_PlaceViewmodelActionController.startAction(
        name: '_PlaceViewmodel.reviewPlace');
    try {
      return super.reviewPlace(rating, reviewableId,
          comment: comment, onSuccessReview: onSuccessReview);
    } finally {
      _$_PlaceViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void favoritePlace({required String favorableId}) {
    final _$actionInfo = _$_PlaceViewmodelActionController.startAction(
        name: '_PlaceViewmodel.favoritePlace');
    try {
      return super.favoritePlace(favorableId: favorableId);
    } finally {
      _$_PlaceViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pagingController: ${pagingController},
getPlaceDetailsFuture: ${getPlaceDetailsFuture},
refreshListPagination: ${refreshListPagination},
placeFuture: ${placeFuture},
placesTypeFuture: ${placesTypeFuture},
reviewFuture: ${reviewFuture},
placeMode: ${placeMode},
productsFuture: ${productsFuture},
placesType: ${placesType}
    ''';
  }
}
