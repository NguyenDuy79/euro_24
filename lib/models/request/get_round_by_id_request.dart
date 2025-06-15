import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_round_by_id_request.freezed.dart';
part 'get_round_by_id_request.g.dart';

@freezed
class GetRoundByIdRequest with _$GetRoundByIdRequest {
  factory GetRoundByIdRequest({
    required int id,
  }) = _GetRoundByIdRequest;

  factory GetRoundByIdRequest.fromJson(Map<String, dynamic> json) =>
      _$GetRoundByIdRequestFromJson(json);
}
