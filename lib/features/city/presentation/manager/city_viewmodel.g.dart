// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CityViewModel on _CityViewModel, Store {
  Computed<List<City>?>? _$citiesComputed;

  @override
  List<City>? get cities =>
      (_$citiesComputed ??= Computed<List<City>?>(() => super.cities,
              name: '_CityViewModel.cities'))
          .value;

  late final _$citiesFutureAtom =
      Atom(name: '_CityViewModel.citiesFuture', context: context);

  @override
  ObservableFuture<List<City>?> get citiesFuture {
    _$citiesFutureAtom.reportRead();
    return super.citiesFuture;
  }

  @override
  set citiesFuture(ObservableFuture<List<City>?> value) {
    _$citiesFutureAtom.reportWrite(value, super.citiesFuture, () {
      super.citiesFuture = value;
    });
  }

  late final _$filteredCityAtom =
      Atom(name: '_CityViewModel.filteredCity', context: context);

  @override
  List<City> get filteredCity {
    _$filteredCityAtom.reportRead();
    return super.filteredCity;
  }

  @override
  set filteredCity(List<City> value) {
    _$filteredCityAtom.reportWrite(value, super.filteredCity, () {
      super.filteredCity = value;
    });
  }

  late final _$_CityViewModelActionController =
      ActionController(name: '_CityViewModel', context: context);

  @override
  dynamic fetchCities() {
    final _$actionInfo = _$_CityViewModelActionController.startAction(
        name: '_CityViewModel.fetchCities');
    try {
      return super.fetchCities();
    } finally {
      _$_CityViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filterList(String query) {
    final _$actionInfo = _$_CityViewModelActionController.startAction(
        name: '_CityViewModel.filterList');
    try {
      return super.filterList(query);
    } finally {
      _$_CityViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
citiesFuture: ${citiesFuture},
filteredCity: ${filteredCity},
cities: ${cities}
    ''';
  }
}
