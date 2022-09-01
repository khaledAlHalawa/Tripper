abstract class EndPoints{
  static const _clientScope = '/client';
  static const _countriesScope = "/countries";
  static const _placesScope = "/places";
  static const _placeTypeScope = "/place-types";
  static const _tripScope = "/journeys";
  static const _productsScope = "/products";


  ///! ----< Auth >----
  static const _authRoute = '$_clientScope/auth';

  static const loginEP = '$_authRoute/login';
  static const registerEP = '$_authRoute/register';
  static const logoutEP = '$_authRoute/logout';


  ///! ----< location >----
  static String citiesEP(int countryId) => "$_countriesScope/$countryId/cities";
  static String countriesEp = _countriesScope;
  static String showCountryEP(int countryId) => '$_countriesScope/$countryId';
  static String showCityEP(int countryId , int cityId) => '$_countriesScope/$countryId/cities/$cityId';

  ///! ----< user >----
  static String showUserEP(String userId) => "$_clientScope/show/$userId";
  static String showProfileEP = "$_clientScope/show-profile";
  static String updateUserInfoEP = "$_clientScope/update";
  static String uploadImageProfileEP = "$_clientScope/upload";
  static String updateImageProfileEP = "$_clientScope/update-photo";
  static String addFavoritesEP = "$_clientScope/favorites/add";
  static String removeFavoritesEP = "$_clientScope/favorites/remove";
  static String addReviewsEP = "$_clientScope/reviews/add";
  static String getFavoriteEP = "$_clientScope/favorites";
  static String resetPasswordEP = "$_clientScope/reset-password";

  ///! ----< place >----
  static String placesTypesEP = _placeTypeScope;
  static String showPlaceTypeEP(String placeTypeId) => '$_placeTypeScope/$placeTypeId';
  static String placesEP = _placesScope;
  static String showPlaceEP(String placeId) => '$_placesScope/$placeId';


  ///! ----< trip >----
  static String tripEP = _tripScope;
  static String categoryEP = "$_tripScope/category";

  ///! ----<product>----
  static String productsEP = _productsScope;

}

abstract class Urls {
  static const _baseUrlDev = "http://tripper.dentatic.com$apiType";
  static const _baseUrlLive = "";

  static const String apiType = "/api";


  static String get baseUrl => _baseUrlDev;
  static Uri get baseUri => Uri.parse("http://tripper.dentatic.com");
}