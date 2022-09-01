import 'dart:io';
import 'package:app/features/app/domain/repositories/prefs_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'handling_exception.dart';

typedef FromJson<T> = T Function(dynamic json);

class RequestConfig<T>{
  late final dynamic queryParameters;
  late final String endpoint;
  late final ResponseValue<T> response;

  RequestConfig({
    required this.endpoint,
    required this.response,
    this.queryParameters,
  });
}

class ResponseValue<T> {
  final T? returnValueOnSuccess;
  final FromJson<T>? fromJson;

  ResponseValue({this.returnValueOnSuccess, this.fromJson})
      : assert(() {
          if (fromJson == null &&  returnValueOnSuccess == null) {
            return false;
          }
          return true;
        }(),"They cannot both have a null value together");
}

abstract class BaseApi<T> with HandlingExceptionRequest {

  BaseApi(){
    Map<String,dynamic> headers = client.options.headers;

    if (_prefsRepository.token != null) {
      headers = client.options.headers..[HttpHeaders.authorizationHeader] = 'Bearer ${_prefsRepository.token}';
    }

    options = Options(headers: headers);
  }

  @protected
  final client = GetIt.I<Dio>();

  final _prefsRepository = GetIt.I<PrefsRepository>();

  late Options options;


  Future<T> call();
}
