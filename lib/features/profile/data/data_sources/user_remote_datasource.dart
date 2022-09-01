import 'dart:io';
import 'package:app/core/api/api.dart';
import 'package:app/core/base/datasource/base_datasource.dart';
import 'package:app/features/auth/data/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart' show MediaType;
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import '../../../../common/constant/configuration/url_routes.dart';
import '../../../auth/domain/entities/user.dart';
import '../../../place/domain/entities/place.dart';
import '../../../trip/domain/entities/trip.dart';

@injectable
class UserRemoteDatasource extends BaseRemoteDataSource {
  Future<User> showUserInfo(String userId) async {
    GetClient<User> showUser = GetClient<User>(
      requestPrams: RequestConfig<User>(
        endpoint: EndPoints.showUserEP(userId),
        response: ResponseValue<User>(fromJson: (json) => UserModel.fromJson(json).user!),
      ),
    );

    return showUser();
  }

  Future<User> getProfile() async {
    GetClient<User> getProfile = GetClient<User>(
      requestPrams: RequestConfig<User>(
        endpoint: EndPoints.showProfileEP,
        response: ResponseValue<User>(fromJson: (json) => UserModel.fromJson(json).user!),
      ),
    );

    return getProfile();
  }

  Future<bool> updateProfile(Map<String, dynamic> params) async {
    PutClient<bool> getProfile = PutClient<bool>(
      requestPrams: RequestConfig<bool>(
        endpoint: EndPoints.updateUserInfoEP,
        queryParameters: params,
        response: ResponseValue<bool>(returnValueOnSuccess: true),
      ),
    );

    return getProfile();
  }

  Future<String> uploadProfilePhoto(File file) async {
    PostClient<String> uploadProfilePhoto = PostClient<String>(
      requestPrams: RequestConfig<String>(
        endpoint: EndPoints.uploadImageProfileEP,
        queryParameters: {
          'file': await MultipartFile.fromFile(file.path, filename: basename(file.path)),
        },
        response: ResponseValue<String>(fromJson: (json) => json['data']['name']),
      ),
    );

    return uploadProfilePhoto();
  }

  Future<bool> updateProfilePhoto(File file) async {

    FormData formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        file.path,
        filename: basename(file.path),
        contentType: MediaType("image", file.path.split(".").last),
      ),
    });

    PostClient<bool> uploadProfilePhoto = PostClient<bool>(
      requestPrams: RequestConfig<bool>(
        endpoint: EndPoints.updateImageProfileEP,
        queryParameters: formData,
        response: ResponseValue<bool>(returnValueOnSuccess: true),
      ),
    );

    return uploadProfilePhoto();
  }

  Future<bool> favorite(Map<String, dynamic> params) async {

    print(params);
    PostClient<bool> favorite = PostClient<bool>(
      requestPrams: RequestConfig<bool>(
        endpoint: EndPoints.addFavoritesEP,
        queryParameters: params,
        response: ResponseValue<bool>(returnValueOnSuccess: true),
      ),
    );

    return favorite();
  }

  Future<bool> review(Map<String, dynamic> params) async {
    PostClient<bool> review = PostClient<bool>(
      requestPrams: RequestConfig<bool>(
        endpoint: EndPoints.addReviewsEP,
        queryParameters: params,
        response: ResponseValue<bool>(returnValueOnSuccess: true),
      ),
    );

    return review();
  }
  Future<bool> resetPassword(Map<String, dynamic> params) async {
    PutClient<bool> resetPassword = PutClient<bool>(
      requestPrams: RequestConfig<bool>(
        endpoint: EndPoints.resetPasswordEP,
        queryParameters: params,
        response: ResponseValue<bool>(returnValueOnSuccess: true),
      ),
    );

    return resetPassword();
  }

  Future<bool> deleteFavorite(Map<String, dynamic> params) async {
    DeleteClient<bool> deleteClient = DeleteClient<bool>(
      requestPrams: RequestConfig<bool>(
        endpoint: EndPoints.removeFavoritesEP,
        queryParameters: params,
        response: ResponseValue<bool>(returnValueOnSuccess: true),
      ),
    );

    return deleteClient();
  }

  Future<List<Trip>?> getFavoriteTrip(Map<String, dynamic> params) async {
    GetClient<List<Trip>?> getFavoriteTrip = GetClient<List<Trip>?>(
      requestPrams: RequestConfig<List<Trip>?>(
          endpoint: EndPoints.getFavoriteEP,
          queryParameters: params,
          response: ResponseValue<List<Trip>?>(
              fromJson: (json) =>
                  (json['data'] as List<dynamic>?)?.map((e) => Trip.fromJson(e as Map<String, dynamic>)).toList())),
    );

    return getFavoriteTrip();
  }

  Future<List<Place>?> getFavoritePlace(Map<String, dynamic> params) async {
    GetClient<List<Place>?> getFavoritePlace = GetClient<List<Place>?>(
      requestPrams: RequestConfig<List<Place>?>(
        endpoint: EndPoints.getFavoriteEP,
        queryParameters: params,
        response: ResponseValue<List<Place>?>(
            fromJson: (json) =>
                (json['data'] as List<dynamic>?)?.map((e) => Place.fromJson(e as Map<String, dynamic>)).toList()),
      ),
    );

    return getFavoritePlace();
  }
}
