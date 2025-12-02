import 'package:aast_books_project/core/network/app_exception.dart';

abstract class ApiResult<T> {}

class Success<T> extends ApiResult {
  T? data;
  Success({this.data});
}

class Failure extends ApiResult {
  final AppException exception;

  Failure(this.exception);
}
