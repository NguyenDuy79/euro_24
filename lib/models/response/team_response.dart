import 'package:euro_app_24/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'team_response.freezed.dart';
part 'team_response.g.dart';

@freezed
class TeamResponse with _$TeamResponse {
  factory TeamResponse({
    List<Team>? data,
  }) = _TeamResponse;

  factory TeamResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamResponseFromJson(json);
}
