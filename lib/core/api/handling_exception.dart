import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:app/core/error/exception.dart';
import 'package:app/core/error/failures.dart';
import 'api.dart';

typedef RequestCall<T> = Future<T> Function();

mixin HandlingExceptionRequest {

  Exception getException({required int statusCode ,String? message}) {
    if (statusCode == 330) {
      return DataDuplicatesException(message: message);
    } else if (statusCode == StatusCodeType.missingParam.code) {
      return MissingParamException(message: message);
    } else if (statusCode == StatusCodeType.notAuthenticated.code) {
      return NotAuthenticatedException(message: message);
    } else if (statusCode == StatusCodeType.notAuthorized.code || statusCode == 550) {
      return UserNotAllowedToAccessException(message: message);
    } else if (statusCode == StatusCodeType.operationFailed.code) {
      return OperationFailedException(message: message);
    } else if (statusCode == 499) {
      return TokenMisMatchException(message: message);
    } else if (statusCode == StatusCodeType.dataNotFound.code) {
      return DataNotFoundException(message: message);
    } else if (statusCode == 522) {
      return InvalidEmailException(message: message);
    } else if (statusCode == StatusCodeType.invalidPhoneNumber.code) {
      return InvalidPhoneException(message: message);
    } else if (statusCode == StatusCodeType.notFound.code) {
      return DataNotFoundException(message: message);
    } else {
      return ServerException(message: message);
    }
  }

  Future<Either<Failure, T>> handlingExceptionRequest<T>({required RequestCall<T> requestCall}) async {
    try {
      T response = await requestCall();
      return Right(response);
    } on ServerException {
      Logger(printer: PrettyPrinter(methodCount: 0)).e("***|| ServerException ||*** ");
      return const Left(ServerFailure());
    } on DataDuplicatesException {
      Logger(printer: PrettyPrinter(methodCount: 0)).e("***|| DataDuplicatesException ||***");
      return const Left(DataDuplicatesFailure());
    } on MissingParamException {
      Logger(printer: PrettyPrinter(methodCount: 0)).e("***|| MissingParamException ||*** ");
      return const Left(MissingParamFailure());
    } on UserNotAllowedToAccessException {
      Logger(printer: PrettyPrinter(methodCount: 0)).e("***|| UserNotAllowedToAccessException ||***");
      return const Left(UserNotAllowedToAccessFailure());
    } on OperationFailedException {
      Logger(printer: PrettyPrinter(methodCount: 0)).e("***|| OperationFailedException ||***");
      return const Left(OperationFailedFailure());
    } on TokenMisMatchException {
      Logger(printer: PrettyPrinter(methodCount: 0)).e("***|| TokenMisMatchException ||***");
      return const Left(TokenMisMatchFailure());
    } on DataNotFoundException {
      Logger(printer: PrettyPrinter(methodCount: 0)).e("***|| DataNotFoundException ||***");
      return const Left(DataNotFoundFailure());
    } on InvalidEmailException {
      Logger(printer: PrettyPrinter(methodCount: 0)).e("***|| InvalidEmailException ||***");
      return const Left(InvalidEmailFailure());
    } on InvalidPhoneException {
      Logger(printer: PrettyPrinter(methodCount: 0)).e("***|| InvalidPhoneException ||***");
      return const Left(InvalidPhoneFailure());
    } on NotAuthenticatedException {
      Logger(printer: PrettyPrinter(methodCount: 0)).e("***|| NotAuthenticatedException ||***");
      return const Left(NotAuthenticatedFailure());
    } on TimeoutException {
      Logger(printer: PrettyPrinter(methodCount: 0)).e("***|| TimeoutException ||***");
      return const Left(TimeOutFailure());
    } on DioError catch (e, s) {
      Logger(printer: PrettyPrinter(methodCount: 0)).e("***|| DioError ||*** \n $s");
      return Left(DioFailure(message: e.message));
    } catch (e, stackTrace) {
      Logger(printer: PrettyPrinter(methodCount: 0)).e(
        "***|| CATCH ERROR ||***"
        "\n $e"
        "***|| Stack Trace ||***"
        "\n $stackTrace",
      );
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
