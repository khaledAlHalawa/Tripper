// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TripViewmodel on _TripViewmodel, Store {
  Computed<List<Trip>?>? _$tripsComputed;

  @override
  List<Trip>? get trips =>
      (_$tripsComputed ??= Computed<List<Trip>?>(() => super.trips,
              name: '_TripViewmodel.trips'))
          .value;

  late final _$minValueAtom =
      Atom(name: '_TripViewmodel.minValue', context: context);

  @override
  double get minValue {
    _$minValueAtom.reportRead();
    return super.minValue;
  }

  @override
  set minValue(double value) {
    _$minValueAtom.reportWrite(value, super.minValue, () {
      super.minValue = value;
    });
  }

  late final _$maxValueAtom =
      Atom(name: '_TripViewmodel.maxValue', context: context);

  @override
  double get maxValue {
    _$maxValueAtom.reportRead();
    return super.maxValue;
  }

  @override
  set maxValue(double value) {
    _$maxValueAtom.reportWrite(value, super.maxValue, () {
      super.maxValue = value;
    });
  }

  late final _$selectedPlacesAtom =
      Atom(name: '_TripViewmodel.selectedPlaces', context: context);

  @override
  Map<String, String> get selectedPlaces {
    _$selectedPlacesAtom.reportRead();
    return super.selectedPlaces;
  }

  @override
  set selectedPlaces(Map<String, String> value) {
    _$selectedPlacesAtom.reportWrite(value, super.selectedPlaces, () {
      super.selectedPlaces = value;
    });
  }

  late final _$datePickerModeAtom =
      Atom(name: '_TripViewmodel.datePickerMode', context: context);

  @override
  DateRangePickerSelectionMode get datePickerMode {
    _$datePickerModeAtom.reportRead();
    return super.datePickerMode;
  }

  @override
  set datePickerMode(DateRangePickerSelectionMode value) {
    _$datePickerModeAtom.reportWrite(value, super.datePickerMode, () {
      super.datePickerMode = value;
    });
  }

  late final _$tripModeAtom =
      Atom(name: '_TripViewmodel.tripMode', context: context);

  @override
  TripMode get tripMode {
    _$tripModeAtom.reportRead();
    return super.tripMode;
  }

  @override
  set tripMode(TripMode value) {
    _$tripModeAtom.reportWrite(value, super.tripMode, () {
      super.tripMode = value;
    });
  }

  late final _$tripsFutureAtom =
      Atom(name: '_TripViewmodel.tripsFuture', context: context);

  @override
  ObservableFuture<List<Trip>?> get tripsFuture {
    _$tripsFutureAtom.reportRead();
    return super.tripsFuture;
  }

  @override
  set tripsFuture(ObservableFuture<List<Trip>?> value) {
    _$tripsFutureAtom.reportWrite(value, super.tripsFuture, () {
      super.tripsFuture = value;
    });
  }

  late final _$reviewFutureAtom =
      Atom(name: '_TripViewmodel.reviewFuture', context: context);

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

  late final _$_TripViewmodelActionController =
      ActionController(name: '_TripViewmodel', context: context);

  @override
  void fetchTrips(GetTripsParams params, {VoidCallback? onSuccess}) {
    final _$actionInfo = _$_TripViewmodelActionController.startAction(
        name: '_TripViewmodel.fetchTrips');
    try {
      return super.fetchTrips(params, onSuccess: onSuccess);
    } finally {
      _$_TripViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeMinMaxValue(double minValue, double maxValue) {
    final _$actionInfo = _$_TripViewmodelActionController.startAction(
        name: '_TripViewmodel.changeMinMaxValue');
    try {
      return super.changeMinMaxValue(minValue, maxValue);
    } finally {
      _$_TripViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addOrRemovePlaceEntry(MapEntry<String, String> entry) {
    final _$actionInfo = _$_TripViewmodelActionController.startAction(
        name: '_TripViewmodel.addOrRemovePlaceEntry');
    try {
      return super.addOrRemovePlaceEntry(entry);
    } finally {
      _$_TripViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reviewTrip(int rating, String reviewableId,
      {String? comment, VoidCallback? onSuccessReview}) {
    final _$actionInfo = _$_TripViewmodelActionController.startAction(
        name: '_TripViewmodel.reviewTrip');
    try {
      return super.reviewTrip(rating, reviewableId,
          comment: comment, onSuccessReview: onSuccessReview);
    } finally {
      _$_TripViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void favoriteTrip({required String favorableId}) {
    final _$actionInfo = _$_TripViewmodelActionController.startAction(
        name: '_TripViewmodel.favoriteTrip');
    try {
      return super.favoriteTrip(favorableId: favorableId);
    } finally {
      _$_TripViewmodelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
minValue: ${minValue},
maxValue: ${maxValue},
selectedPlaces: ${selectedPlaces},
datePickerMode: ${datePickerMode},
tripMode: ${tripMode},
tripsFuture: ${tripsFuture},
reviewFuture: ${reviewFuture},
trips: ${trips}
    ''';
  }
}
