import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_season_by_id_request.freezed.dart';
part 'get_season_by_id_request.g.dart';

@freezed
class GetSeasonByIdRequest with _$GetSeasonByIdRequest {
  factory GetSeasonByIdRequest({
    required int id,
  }) = _GetSeasonByIdRequest;

  factory GetSeasonByIdRequest.fromJson(Map<String, dynamic> json) =>
      _$GetSeasonByIdRequestFromJson(json);
}
