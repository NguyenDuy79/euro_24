import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_result.freezed.dart';

@freezed
class ErrorResult with _$ErrorResult {
  factory ErrorResult({
    required Exception error,
  }) = _ErrorResult;
}
