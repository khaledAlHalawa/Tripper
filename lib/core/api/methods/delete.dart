import 'dart:async';
import 'package:app/core/api/base_api.dart';
import 'package:app/core/api/status_code_type.dart';
import 'package:dio/dio.dart';

class DeleteClient<T> extends BaseApi<T> {
  DeleteClient({
    required this.requestPrams,
  })  : _fromJson = requestPrams.response.fromJson,
        _valueOnSuccess = requestPrams.response.returnValueOnSuccess,
        _queryParameters = requestPrams.queryParameters,
        _endpoint = requestPrams.endpoint;

  final RequestConfig<T> requestPrams;

  final FromJson<T>? _fromJson;
  final T? _valueOnSuccess;
  final Map<String, dynamic>? _queryParameters;
  final String _endpoint;

  @override
  Future<T> call() async {
    try {
      final Response response = await client.deleteUri(
        Uri.parse(client.options.baseUrl + _endpoint),
        options: options,
        data: _queryParameters,
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
