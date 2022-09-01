import 'package:app/core/base/viewmodels/base_viewmodel.dart';
import 'package:app/core/error/failures.dart';
import 'package:app/features/city/domain/use_cases/get_cities_usecase.dart';
import 'package:app/features/city/domain/use_cases/get_countries_usecase.dart';
import 'package:app/features/city/domain/use_cases/show_country_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../domain/entities/city.dart';
import '../../domain/use_cases/show_city_usecase.dart';

part 'city_viewmodel.g.dart';

@injectable
class CityViewModel extends _CityViewModel with _$CityViewModel {
  CityViewModel(
    GetCitiesUsecase getCitiesUsecase,
    GetCountriesUsecase getCountriesUsecase,
    ShowCountryUsecase showCountryUsecase,
    ShowCityUsecase showCityUsecase,
  ) : super(
          getCitiesUsecase,
          getCountriesUsecase,
          showCountryUsecase,
          showCityUsecase,
        );
}

abstract class _CityViewModel extends BaseViewmodel with Store {
  _CityViewModel(
    this._getCitiesUsecase,
    this._getCountriesUsecase,
    this._showCountryUsecase,
    this._showCityUsecase,
  );

  final GetCitiesUsecase _getCitiesUsecase;
  final GetCountriesUsecase _getCountriesUsecase;
  final ShowCountryUsecase _showCountryUsecase;
  final ShowCityUsecase _showCityUsecase;

  @observable
  ObservableFuture<List<City>?> citiesFuture = ObservableFuture.value(null);

  @observable
  List<City> filteredCity = [];

  @computed
  List<City>? get cities => citiesFuture.value;

  @action
  fetchCities() {
    if (cities == null) {
      citiesFuture = futureWrapper(
        () => _getCitiesUsecase(GetCitiesParams()).then(_onResponseCities),
      );
    }
  }

  List<City> _onResponseCities(Either<Failure, List<City>> either) {
    return either.fold((l) => throw l, (r) => filteredCity = r);
  }

  @action
  filterList(String query) {
    filteredCity = cities
            ?.where(
              (element) => element.name!.toLowerCase().contains(query.toLowerCase()),
            )
            .toList() ??
        [];
  }
}
