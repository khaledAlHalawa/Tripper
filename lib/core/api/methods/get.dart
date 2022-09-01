import 'dart:async';
import 'package:dio/dio.dart';
import '../../../common/constant/configuration/url_routes.dart';
import '../api.dart';

class GetClient<T> extends BaseApi<T> {
  GetClient({
    required this.requestPrams,
    this.onReceiveProgress,
  })  : _fromJson = requestPrams.response.fromJson,
        _valueOnSuccess = requestPrams.response.returnValueOnSuccess,
        _endpoint = requestPrams.endpoint,
        _queryParameters = requestPrams.queryParameters;

  RequestConfig<T> requestPrams;
  final ProgressCallback? onReceiveProgress;

  final FromJson<T>? _fromJson;
  final T? _valueOnSuccess;
  final String _endpoint;
  final Map<String, dynamic>? _queryParameters;

  @override
  Future<T> call() async {
    try {
      final Response response = await client.getUri(
        Uri(
          host: Urls.baseUri.host,
          scheme: Urls.baseUri.scheme,
          path:  "${Urls.apiType}$_endpoint",
          queryParameters: _queryParameters,
        ),
        options: options,
        onReceiveProgress: onReceiveProgress,
      );

      if (response.statusCode == StatusCodeType.succeedOperation.code) {
        if (_fromJson == null) {
          return Future.value(_valueOnSuccess);
        }

        return _fromJson!(response.data);
      } else {
        final exception = getException(statusCode: response.statusCode!, message: response.data['message']);
        throw exception;
      }
    } catch (exception) {
      rethrow;
    }
  }
}
