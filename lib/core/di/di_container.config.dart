// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i12;
import 'package:shared_preferences/shared_preferences.dart' as _i19;

import '../../features/app/data/repositories/prefs_repository_impl.dart'
    as _i43;
import '../../features/app/domain/repositories/prefs_repository.dart' as _i42;
import '../../features/app/presentation/viewmodel/tripper_viewmodel.dart'
    as _i46;
import '../../features/auth/data/data_sources/auth_remote_datasource.dart'
    as _i3;
import '../../features/auth/data/repositories/auth_repository_impl.dart' as _i5;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i4;
import '../../features/auth/domain/use_cases/login_by_email_usecase.dart'
    as _i13;
import '../../features/auth/domain/use_cases/logout_usecase.dart' as _i14;
import '../../features/auth/domain/use_cases/register_by_email_usecase.dart'
    as _i18;
import '../../features/auth/presentation/manager/auth_viewmodel.dart' as _i51;
import '../../features/city/data/data_sources/city_remote_datasource.dart'
    as _i7;
import '../../features/city/data/repositories/city_repository_impl.dart' as _i9;
import '../../features/city/domain/repositories/city_repository.dart' as _i8;
import '../../features/city/domain/use_cases/get_cities_usecase.dart' as _i10;
import '../../features/city/domain/use_cases/get_countries_usecase.dart'
    as _i11;
import '../../features/city/domain/use_cases/show_city_usecase.dart' as _i20;
import '../../features/city/domain/use_cases/show_country_usecase.dart' as _i21;
import '../../features/city/presentation/manager/city_viewmodel.dart' as _i31;
import '../../features/favorite/presentation/manager/favorite_viewmodel.dart'
    as _i52;
import '../../features/place/data/data_sources/place_remote_datasource.dart'
    as _i15;
import '../../features/place/data/repositories/place_repository_impl.dart'
    as _i17;
import '../../features/place/domain/repositories/place_repostory.dart' as _i16;
import '../../features/place/domain/use_cases/get_place_type_usecase.dart'
    as _i37;
import '../../features/place/domain/use_cases/get_places_usecase.dart' as _i38;
import '../../features/place/domain/use_cases/get_products_usecase.dart'
    as _i39;
import '../../features/place/domain/use_cases/show_place_type_usecase.dart'
    as _i22;
import '../../features/place/domain/use_cases/show_place_usecase.dart' as _i23;
import '../../features/place/presentation/manager/place_viewmodel.dart' as _i53;
import '../../features/profile/data/data_sources/user_remote_datasource.dart'
    as _i27;
import '../../features/profile/data/repositories/user_repository_impl.dart'
    as _i29;
import '../../features/profile/domain/repositories/user_repostory.dart' as _i28;
import '../../features/profile/domain/use_cases/add_reviews_usecase.dart'
    as _i30;
import '../../features/profile/domain/use_cases/delete_favorite_usecase.dart'
    as _i32;
import '../../features/profile/domain/use_cases/favorite_usecase.dart' as _i33;
import '../../features/profile/domain/use_cases/get_favorite_place_usecase.dart'
    as _i35;
import '../../features/profile/domain/use_cases/get_favorite_trip_usecase.dart'
    as _i36;
import '../../features/profile/domain/use_cases/get_profile_usecase.dart'
    as _i40;
import '../../features/profile/domain/use_cases/reset_password_usecase.dart'
    as _i44;
import '../../features/profile/domain/use_cases/show_user_usecase.dart' as _i45;
import '../../features/profile/domain/use_cases/update_profile_photo.dart'
    as _i47;
import '../../features/profile/domain/use_cases/update_profile_usecase.dart'
    as _i48;
import '../../features/profile/domain/use_cases/upload_photo_profile_usecase.dart'
    as _i49;
import '../../features/profile/presentation/manager/user_viewmodel.dart'
    as _i50;
import '../../features/trip/data/data_sources/trip_remote_datasource.dart'
    as _i24;
import '../../features/trip/data/repositories/trip_repository_impl.dart'
    as _i26;
import '../../features/trip/domain/repositories/trip_repostory.dart' as _i25;
import '../../features/trip/domain/use_cases/get_categories_usecase.dart'
    as _i34;
import '../../features/trip/domain/use_cases/get_trips_usecase.dart' as _i41;
import '../../features/trip/presentation/manager/trip_viewmodel.dart' as _i54;
import 'di_container.dart' as _i55; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final tripperModule = _$TripperModule();
  gh.factory<_i3.AuthRemoteDatasource>(() => _i3.AuthRemoteDatasource());
  gh.lazySingleton<_i4.AuthRepository>(
      () => _i5.AuthRepositoryImpl(get<_i3.AuthRemoteDatasource>()));
  gh.factory<_i6.BaseOptions>(() => tripperModule.dioOption);
  gh.factory<_i7.CityRemoteDatasource>(() => _i7.CityRemoteDatasource());
  gh.lazySingleton<_i8.CityRepository>(
      () => _i9.CityRepositoryImpl(get<_i7.CityRemoteDatasource>()));
  gh.factory<_i10.GetCitiesUsecase>(
      () => _i10.GetCitiesUsecase(repository: get<_i8.CityRepository>()));
  gh.factory<_i11.GetCountriesUsecase>(
      () => _i11.GetCountriesUsecase(repository: get<_i8.CityRepository>()));
  gh.singleton<_i12.Logger>(tripperModule.logger);
  gh.factory<_i13.LoginByEmailUsecase>(
      () => _i13.LoginByEmailUsecase(get<_i4.AuthRepository>()));
  gh.factory<_i14.LogoutUsecase>(
      () => _i14.LogoutUsecase(repository: get<_i4.AuthRepository>()));
  gh.factory<_i15.PlaceRemoteDatasource>(() => _i15.PlaceRemoteDatasource());
  gh.lazySingleton<_i16.PlaceRepository>(
      () => _i17.PlaceRepositoryImpl(get<_i15.PlaceRemoteDatasource>()));
  gh.factory<_i18.RegisterByEmailUsecase>(
      () => _i18.RegisterByEmailUsecase(get<_i4.AuthRepository>()));
  await gh.singletonAsync<_i19.SharedPreferences>(
      () => tripperModule.sharedPreferences,
      preResolve: true);
  gh.factory<_i20.ShowCityUsecase>(
      () => _i20.ShowCityUsecase(repository: get<_i8.CityRepository>()));
  gh.factory<_i21.ShowCountryUsecase>(
      () => _i21.ShowCountryUsecase(repository: get<_i8.CityRepository>()));
  gh.factory<_i22.ShowPlaceTypeUsecase>(
      () => _i22.ShowPlaceTypeUsecase(repository: get<_i16.PlaceRepository>()));
  gh.factory<_i23.ShowPlaceUsecase>(
      () => _i23.ShowPlaceUsecase(repository: get<_i16.PlaceRepository>()));
  gh.factory<_i24.TripRemoteDatasource>(() => _i24.TripRemoteDatasource());
  gh.lazySingleton<_i25.TripRepository>(
      () => _i26.TripRepositoryImpl(get<_i24.TripRemoteDatasource>()));
  gh.factory<_i27.UserRemoteDatasource>(() => _i27.UserRemoteDatasource());
  gh.lazySingleton<_i28.UserRepository>(
      () => _i29.UserRepositoryImpl(get<_i27.UserRemoteDatasource>()));
  gh.factory<_i30.AddReviewsUsecase>(
      () => _i30.AddReviewsUsecase(repository: get<_i28.UserRepository>()));
  gh.factory<_i31.CityViewModel>(() => _i31.CityViewModel(
      get<_i10.GetCitiesUsecase>(),
      get<_i11.GetCountriesUsecase>(),
      get<_i21.ShowCountryUsecase>(),
      get<_i20.ShowCityUsecase>()));
  gh.factory<_i32.DeleteFavoriteUsecase>(
      () => _i32.DeleteFavoriteUsecase(repository: get<_i28.UserRepository>()));
  gh.singleton<_i6.Dio>(
      tripperModule.dio(get<_i6.BaseOptions>(), get<_i12.Logger>()));
  gh.factory<_i33.FavoriteUsecase>(
      () => _i33.FavoriteUsecase(repository: get<_i28.UserRepository>()));
  gh.factory<_i34.GetCategoriesUsecase>(
      () => _i34.GetCategoriesUsecase(repository: get<_i25.TripRepository>()));
  gh.factory<_i35.GetFavoritePlaceUsecase>(() =>
      _i35.GetFavoritePlaceUsecase(repository: get<_i28.UserRepository>()));
  gh.factory<_i36.GetFavoriteTripUsecase>(() =>
      _i36.GetFavoriteTripUsecase(repository: get<_i28.UserRepository>()));
  gh.factory<_i37.GetPlacesTypeUsecase>(
      () => _i37.GetPlacesTypeUsecase(repository: get<_i16.PlaceRepository>()));
  gh.factory<_i38.GetPlacesUsecase>(
      () => _i38.GetPlacesUsecase(repository: get<_i16.PlaceRepository>()));
  gh.factory<_i39.GetProductsUsecase>(
      () => _i39.GetProductsUsecase(repository: get<_i16.PlaceRepository>()));
  gh.factory<_i40.GetProfileUsecase>(
      () => _i40.GetProfileUsecase(repository: get<_i28.UserRepository>()));
  gh.factory<_i41.GetTripsUsecase>(
      () => _i41.GetTripsUsecase(repository: get<_i25.TripRepository>()));
  gh.lazySingleton<_i42.PrefsRepository>(
      () => _i43.PrefsRepositoryImpl(get<_i19.SharedPreferences>()));
  gh.factory<_i44.ResetPasswordUsecase>(
      () => _i44.ResetPasswordUsecase(repository: get<_i28.UserRepository>()));
  gh.factory<_i45.ShowUserUsecase>(
      () => _i45.ShowUserUsecase(repository: get<_i28.UserRepository>()));
  gh.factory<_i46.TripperViewModel>(
      () => _i46.TripperViewModel(get<_i42.PrefsRepository>()));
  gh.factory<_i47.UpdatePhotoProfileUsecase>(() =>
      _i47.UpdatePhotoProfileUsecase(repository: get<_i28.UserRepository>()));
  gh.factory<_i48.UpdateProfileUsecase>(
      () => _i48.UpdateProfileUsecase(repository: get<_i28.UserRepository>()));
  gh.factory<_i49.UploadPhotoProfileUsecase>(() =>
      _i49.UploadPhotoProfileUsecase(repository: get<_i28.UserRepository>()));
  gh.factory<_i50.UserViewmodel>(() => _i50.UserViewmodel(
      get<_i30.AddReviewsUsecase>(),
      get<_i33.FavoriteUsecase>(),
      get<_i40.GetProfileUsecase>(),
      get<_i45.ShowUserUsecase>(),
      get<_i48.UpdateProfileUsecase>(),
      get<_i49.UploadPhotoProfileUsecase>(),
      get<_i47.UpdatePhotoProfileUsecase>(),
      get<_i44.ResetPasswordUsecase>()));
  gh.factory<_i51.AuthViewmodel>(() => _i51.AuthViewmodel(
      get<_i13.LoginByEmailUsecase>(),
      get<_i18.RegisterByEmailUsecase>(),
      get<_i42.PrefsRepository>(),
      get<_i14.LogoutUsecase>()));
  gh.factory<_i52.FavoriteViewmodel>(() => _i52.FavoriteViewmodel(
      get<_i35.GetFavoritePlaceUsecase>(), get<_i36.GetFavoriteTripUsecase>()));
  gh.factory<_i53.PlaceViewmodel>(() => _i53.PlaceViewmodel(
      get<_i38.GetPlacesUsecase>(),
      get<_i37.GetPlacesTypeUsecase>(),
      get<_i23.ShowPlaceUsecase>(),
      get<_i22.ShowPlaceTypeUsecase>(),
      get<_i30.AddReviewsUsecase>(),
      get<_i42.PrefsRepository>(),
      get<_i39.GetProductsUsecase>(),
      get<_i33.FavoriteUsecase>(),
      get<_i32.DeleteFavoriteUsecase>(),
      get<_i52.FavoriteViewmodel>()));
  gh.factory<_i54.TripViewmodel>(() => _i54.TripViewmodel(
      get<_i34.GetCategoriesUsecase>(),
      get<_i41.GetTripsUsecase>(),
      get<_i30.AddReviewsUsecase>(),
      get<_i33.FavoriteUsecase>(),
      get<_i32.DeleteFavoriteUsecase>(),
      get<_i52.FavoriteViewmodel>()));
  return get;
}

class _$TripperModule extends _i55.TripperModule {}
