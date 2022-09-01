import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import '../../../common/constant/configuration/url_routes.dart';
import 'api.dart';

enum _StatusType {
  succeed,
  failed,
}

class LoggerInterceptor extends Interceptor with HandlingExceptionRequest {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      Logger(printer: PrettyPrinter(methodCount: 0)).i(
        "***|| INFO Request ${options.path.substring(Urls.baseUrl.length)} ||***"
            "\n HTTP Method: ${options.method}"
            "\n token : ${options.headers[HttpHeaders.authorizationHeader]?.substring(0, 20)}"
            "\n param : ${options.data}"
            "\n url: ${options.path}"
            "\n timeout: ${options.connectTimeout ~/ 1000}s",
      );
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      _StatusType statusType;
      if (listSuccessStatusCode.contains(response.statusCode)) {
        statusType = _StatusType.succeed;
      } else {
        statusType = _StatusType.failed;
      }
      final requestRoute = response.requestOptions.path.substring(Urls.baseUrl.length);

      if (statusType == _StatusType.failed) {
        Logger(printer: PrettyPrinter(methodCount: 0))
            .e('***|| ${statusType.name.toUpperCase()} Response into -> $requestRoute ||***');
      } else {
        Logger(printer: PrettyPrinter(methodCount: 0))
            .v('***|| ${statusType.name.toUpperCase()} Response into -> $requestRoute ||***');
      }

      Logger(printer: PrettyPrinter(methodCount: 0)).wtf(
        "***|| INFO Response Request $requestRoute ${statusType == _StatusType.succeed ? '✊' : ''} ||***"
            "\n Status code: ${response.statusCode}"
            "\n Status message: ${response.statusMessage}"
            "\n Data: ${response.data}",
      );
    }

    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      Logger(printer: PrettyPrinter(methodCount: 0)).e(
        "***|| SOMETHING ERROR 💔 ||***"
            "\n error: ${err.error}"
            "\n response: ${err.response}"
            "\n message: ${err.message}"
            "\n type: ${err.type}"
            "\n stackTrace: ${err.stackTrace}",
      );
    }

    handler.next(err);
  }
}
