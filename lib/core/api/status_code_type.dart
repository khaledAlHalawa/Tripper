

class StatusCodeType {
  final int? code;
  const StatusCodeType._({required this.code});

  // **** Success ****

  static const succeedOperation = StatusCodeType._(code: 200);
  static const succeedGet = StatusCodeType._(code: 200);
  static const createdPut = StatusCodeType._(code: 201);
  static const succeedCreatedPost = StatusCodeType._(code: 220);
  static const succeedInsertedPost = StatusCodeType._(code: 200);
  static const succeedPut = StatusCodeType._(code: 240);
  static const succeedDelete = StatusCodeType._(code: 250);

  // **** Error 400 ****

  static const missingParam = StatusCodeType._(code: 400);
  static const notFound = StatusCodeType._(code: 404);
  static const httpMethodNotSupported = StatusCodeType._(code: 405);
  static const dataNotFound = StatusCodeType._(code: 410);
  static const alreadyExist = StatusCodeType._(code: 420);
  static const notAuthenticated = StatusCodeType._(code: 430);
  static const notAuthorized = StatusCodeType._(code: 440);
  static const invalidPhoneNumber = StatusCodeType._(code: 450);
  static const invalidData = StatusCodeType._(code: 460);

  // **** Error 500 ****

  static const internalServerError = StatusCodeType._(code: 500);
  static const handshakeError = StatusCodeType._(code: 503);
  static const operationFailed = StatusCodeType._(code: 510);
  static const creatingFailed = StatusCodeType._(code: 520);
  static const insertingFailed = StatusCodeType._(code: 530);
  static const updatingFailed = StatusCodeType._(code: 540);
  static const deletingFailed = StatusCodeType._(code: 550);
  static const serverError = StatusCodeType._(code: 560);
}

final listSuccessStatusCode = [
  StatusCodeType.succeedInsertedPost.code,
  StatusCodeType.succeedOperation.code,
  StatusCodeType.succeedGet.code,
  StatusCodeType.createdPut.code,
  StatusCodeType.succeedCreatedPost.code,
  StatusCodeType.succeedPut.code,
  StatusCodeType.succeedDelete.code,
];
