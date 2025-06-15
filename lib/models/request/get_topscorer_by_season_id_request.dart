import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_topscorer_by_season_id_request.freezed.dart';
part 'get_topscorer_by_season_id_request.g.dart';

@freezed
class GetTopScorerBySeasonIdRequest with _$GetTopScorerBySeasonIdRequest {
  factory GetTopScorerBySeasonIdRequest({
    required int id,
  }) = _GetTopScorerBySeasonIdRequest;

  factory GetTopScorerBySeasonIdRequest.fromJson(Map<String, dynamic> json) =>
      _$GetTopScorerBySeasonIdRequestFromJson(json);
}
