import 'package:app/features/app/domain/repositories/prefs_repository.dart';
import 'package:app/features/app/presentation/viewmodel/tripper_viewmodel.dart';
import 'package:app/features/city/presentation/manager/city_viewmodel.dart';
import 'package:app/features/place/domain/use_cases/get_place_type_usecase.dart';
import 'package:app/features/place/domain/use_cases/get_places_usecase.dart';
import 'package:app/features/place/domain/use_cases/get_products_usecase.dart';
import 'package:app/features/place/domain/use_cases/show_place_type_usecase.dart';
import 'package:app/features/place/presentation/manager/place_viewmodel.dart';
import 'package:app/features/profile/domain/use_cases/add_reviews_usecase.dart';
import 'package:app/features/profile/domain/use_cases/delete_favorite_usecase.dart';
import 'package:app/features/profile/domain/use_cases/favorite_usecase.dart';
import 'package:app/features/trip/domain/use_cases/get_categories_usecase.dart';
import 'package:app/features/trip/domain/use_cases/get_trips_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import '../../../favorite/presentation/manager/favorite_viewmodel.dart';
import '../../../place/domain/use_cases/show_place_usecase.dart';
import '../../../profile/presentation/manager/user_viewmodel.dart';
import '../../../trip/presentation/manager/trip_viewmodel.dart';

class AppProvidersContainer {
  static final tripperViewmodelProvider = Provider((ref) => GetIt.I<TripperViewModel>());
  static final cityProvider = Provider((ref) => GetIt.I<CityViewModel>());
  static final userProvider = Provider((ref) => GetIt.I<UserViewmodel>());
  static final favoriteProvider = Provider((ref) => GetIt.I<FavoriteViewmodel>());

  static final placeProvider = Provider((ref) {
    return PlaceViewmodel(
      GetIt.I<GetPlacesUsecase>(),
      GetIt.I<GetPlacesTypeUsecase>(),
      GetIt.I<ShowPlaceUsecase>(),
      GetIt.I<ShowPlaceTypeUsecase>(),
      GetIt.I<AddReviewsUsecase>(),
      GetIt.I<PrefsRepository>(),
      GetIt.I<GetProductsUsecase>(),
      GetIt.I<FavoriteUsecase>(),
      GetIt.I<DeleteFavoriteUsecase>(),
      ref.watch<FavoriteViewmodel>(AppProvidersContainer.favoriteProvider),
    );
  });

  static final tripProvider = Provider((ref) {
    return TripViewmodel(
      GetIt.I<GetCategoriesUsecase>(),
      GetIt.I<GetTripsUsecase>(),
      GetIt.I<AddReviewsUsecase>(),
      GetIt.I<FavoriteUsecase>(),
      GetIt.I<DeleteFavoriteUsecase>(),
      ref.watch<FavoriteViewmodel>(AppProvidersContainer.favoriteProvider),
    );
  });
}
