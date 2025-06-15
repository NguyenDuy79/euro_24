import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_teams_request.freezed.dart';
part 'get_teams_request.g.dart';

@freezed
class GetTeamsRequest with _$GetTeamsRequest {
  factory GetTeamsRequest({
    required int? id,
  }) = _GetTeamsRequest;

  factory GetTeamsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetTeamsRequestFromJson(json);
}