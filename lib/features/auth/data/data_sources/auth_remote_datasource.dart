import 'package:app/common/constant/configuration/url_routes.dart';
import 'package:app/core/api/api.dart';
import 'package:app/core/base/datasource/base_datasource.dart';
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:injectable/injectable.dart';
import '../models/user_model.dart';

@injectable
class AuthRemoteDatasource extends BaseRemoteDataSource {

  Future<User> auth(Map<String, dynamic> params, String endPoint) async {
    PostClient<User> auth = PostClient<User>(
      requestPrams: RequestConfig<User>(
        endpoint: endPoint,
        response: ResponseValue<User>(fromJson: (user) => UserModel.fromJson(user).user!),
        queryParameters: params,
      ),
    );

    return auth();
  }

  Future<bool> logout() async {
    GetClient<bool> logout = GetClient<bool>(
      requestPrams: RequestConfig<bool>(
        endpoint: EndPoints.logoutEP,
        response: ResponseValue<bool>(returnValueOnSuccess: true),
      ),
    );

    return logout();
  }
}
