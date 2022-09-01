import 'dart:async';
import 'package:dio/dio.dart';
import '../api.dart';

class PostClient<T> extends BaseApi<T> {
  PostClient({
    required this.requestPrams,
    this.onSendProgress,
    this.onReceiveProgress,
  })  : _fromJson = requestPrams.response.fromJson,
        _valueOnSuccess = requestPrams.response.returnValueOnSuccess,
        _queryParameters = requestPrams.queryParameters,
        _endpoint = requestPrams.endpoint;

  final RequestConfig<T> requestPrams;

  final ProgressCallback? onSendProgress;
  final ProgressCallback? onReceiveProgress;

  final FromJson<T>? _fromJson;
  final T? _valueOnSuccess;
  final dynamic _queryParameters;
  final String _endpoint;

  @override
  Future<T> call() async {
    try {
      final Response response = await client.postUri(
        Uri.parse(client.options.baseUrl + _endpoint),
        options: options,
        data: _queryParameters,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      if (response.statusCode == StatusCodeType.succeedOperation.code) {
        if (_fromJson == null) {
          return Future.value(_valueOnSuccess);
        }

        return _fromJson!(response.data);
      } else {
        throw getException(statusCode: response.statusCode!,message: response.data['message']);
      }
    } catch (exception) {
      rethrow;
    }
  }
}
