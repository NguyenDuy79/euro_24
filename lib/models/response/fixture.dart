// ignore_for_file: invalid_annotation_target

import 'package:euro_app_24/models/response/fixture_participant.dart';
import 'package:euro_app_24/models/response/score.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fixture.freezed.dart';
part 'fixture.g.dart';

@freezed
class Fixture with _$Fixture {
  factory Fixture({
    required int id,
    @JsonKey(name: 'sport_id') int? sportId,
    @JsonKey(name: 'league_id') int? leagueId,
    @JsonKey(name: 'season_id') int? seasonId,
    @JsonKey(name: 'stage_id') int? stageId,
    @JsonKey(name: 'group_id') int? groupId,
    @JsonKey(name: 'round_id') int? roundId,
    @JsonKey(name: 'state_id') int? stateId,
    @JsonKey(name: 'venue_id') int? venueId,
    String? name,
    @JsonKey(name: 'starting_at') String? startingAt,
    @JsonKey(name: 'result_info') String? resultInfo,
    int? length,
    int? startingAtTimestamp,
    List<ScoreObject>? scores,
    List<FixtureParticipant>? participants,
  }) = _Fixture;

  factory Fixture.fromJson(Map<String, dynamic> json) =>
      _$FixtureFromJson(json);
}
