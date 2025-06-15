
import 'package:euro_app_24/models/response/standing.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'standing_response.freezed.dart';
part 'standing_response.g.dart';

@freezed
class StandingResponse with _$StandingResponse {
  factory StandingResponse({
    List<Standing>? data,
  }) = _StandingResponse;

  factory StandingResponse.fromJson(Map<String, dynamic> json) =>
      _$StandingResponseFromJson(json);
}
