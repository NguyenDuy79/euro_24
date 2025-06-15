import 'package:euro_app_24/core/enum/index.dart';
import 'package:euro_app_24/models/response/error_result.dart';
import 'package:euro_app_24/models/index.dart';

class BaseResult<T> {
  ResultType type;
  T? result;
  ErrorResult? error;
  BaseResult({required this.type, this.result, this.error});
  BaseResult.empty({this.type = ResultType.empty});

  BaseResult<T> copyWith({
    ResultType? type,
    T? result,
    ErrorResult? error,
  }) {
    return BaseResult<T>(
      type: type ?? this.type,
      error: error ?? this.error,
      result: result ?? this.result,
    );
  }
}
