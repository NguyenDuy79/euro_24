import 'package:euro_app_24/models/response/round.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'group_response.freezed.dart';
part 'group_response.g.dart';

@freezed
class GroupResponse with _$GroupResponse {
  factory GroupResponse({
    List<Round>? data,
  }) = _GroupResponse;

  factory GroupResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupResponseFromJson(json);
}
