class ServerException implements Exception {
  final String? message;

  ServerException({this.message = "ServerException"});
}

class CacheException implements Exception {
  final String? message;

  CacheException({this.message = "CacheException"});
}

class DataDuplicatesException implements Exception {
  final String? message;

  DataDuplicatesException({this.message = "DataDuplicatesException"});
}

class MissingParamException implements Exception {
  final String? message;

  MissingParamException({this.message = "MissingParamException"});
}

class UserNotAllowedToAccessException implements Exception {
  final String? message;

  UserNotAllowedToAccessException({this.message = "UserNotAllowedToAccessException"});
}

class OperationFailedException implements Exception {
  final String? message;

  OperationFailedException({this.message = "OperationFailedException"});
}

class TokenMisMatchException implements Exception {
  final String? message;

  TokenMisMatchException({this.message = "TokenMisMatchException"});
}

class DataNotFoundException implements Exception {
  final String? message;

  DataNotFoundException({this.message = "DataNotFoundException"});
}

class InvalidEmailException implements Exception {
  final String? message;

  InvalidEmailException({this.message = "InvalidEmailException"});
}

class InvalidPhoneException implements Exception {
  final String? message;

  InvalidPhoneException({this.message = "InvalidPhoneException"});
}

class NotAuthenticatedException implements Exception{
  final String? message;

  NotAuthenticatedException({this.message = "NotAuthenticatedException"});
}