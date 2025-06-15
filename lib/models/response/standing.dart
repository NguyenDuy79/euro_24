// ignore_for_file: invalid_annotation_target
import 'package:euro_app_24/models/response/details_standing.dart';
import 'package:euro_app_24/models/response/group.dart';
import 'package:euro_app_24/models/response/standing_participant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'standing.freezed.dart';
part 'standing.g.dart';

@freezed
class Standing with _$Standing {
  factory Standing({
    int? id,
    @JsonKey(name: 'league_id') int? leagueId,
    @JsonKey(name: 'season_id') int? seasonId,
    @JsonKey(name: 'stage_id') int? stageId,
    @JsonKey(name: 'group_id') int?  groupId,
    @JsonKey(name: 'round_id') int? roundId,
    @JsonKey(name: 'participant_id') int? participantId,
    @JsonKey(name:'standing_rule_id') int? standingRuleId,
     Group? group,
     StandingParticipant? participant,
    int? position,
    int? points,
    List<DetailsStanding>? details

  }) = _Standing;
  factory Standing.fromJson(Map<String, dynamic> json) => _$StandingFromJson(json);
}