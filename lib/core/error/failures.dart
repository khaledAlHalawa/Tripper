
abstract class Failure {
  final String message;

  const Failure(this.message);
}

// General failures
class ServerFailure extends Failure {
  const ServerFailure({String? message}) : super(message ?? "ServerFailure");
}

class CacheFailure extends Failure {
  const CacheFailure({String? message}) : super(message ?? "CacheFailure");
}

class DataDuplicatesFailure extends Failure {
  const DataDuplicatesFailure({String? message}) : super(message ?? "DataDuplicatesFailure");
}

class MissingParamFailure extends Failure {
  const MissingParamFailure({String? message}) : super(message ?? "MissingParamFailure");
}

class UserNotAllowedToAccessFailure extends Failure {
  const UserNotAllowedToAccessFailure({String? message}) : super(message ?? "UserNotAllowedToAccessFailure");
}

class OperationFailedFailure extends Failure {
  const OperationFailedFailure({String? message}) : super(message ?? "OperationFailedFailure");
}

class TokenMisMatchFailure extends Failure {
  const TokenMisMatchFailure({String? message}) : super(message ?? "TokenMisMatchFailure");
}

class DataNotFoundFailure extends Failure {
  const DataNotFoundFailure({String? message}) : super(message ?? "DataNotFoundFailure");
}

class InvalidEmailFailure extends Failure {
  const InvalidEmailFailure({String? message}) : super(message ?? "InvalidEmailFailure");
}

class InvalidPhoneFailure extends Failure {
  const InvalidPhoneFailure({String? message}) : super(message ?? "InvalidPhoneFailure");
}

class TimeOutFailure extends Failure {
  const TimeOutFailure({String? message}) : super(message ?? "TimeOutFailure");
}

class NotAuthenticatedFailure extends Failure {
  const NotAuthenticatedFailure({String? message}) : super(message ?? "NotAuthenticatedFailure");
}

class NoInternetFailure extends Failure {
  const NoInternetFailure({String? message}) : super(message ?? "NoInternetFailure");
}

class DioFailure extends Failure {
  const DioFailure({String? message}) : super(message ?? "DioFailure");
}