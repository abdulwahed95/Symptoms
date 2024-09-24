import 'package:symptoms_statistics/catalog/domain/entities/common/response_type.dart';
import 'errors.dart';

class ResponseWrapper<T> {
  T? data;
  ResponseType? responseType;
  Errors? validationErrorParent;
  String? message;
  String? code;
}
