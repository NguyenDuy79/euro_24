
import 'package:euro_app_24/models/response/round.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'round_response.freezed.dart';
part 'round_response.g.dart';

@freezed
class RoundResponse with _$RoundResponse {
  factory RoundResponse({
    List<Round>? data,
  }) = _RoundResponse;

  factory RoundResponse.fromJson(Map<String, dynamic> json) =>
      _$RoundResponseFromJson(json);
}
