// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
part 'round.freezed.dart';
part 'round.g.dart';

@freezed
class Round with _$Round {
  factory Round({
    int? id,
    @JsonKey(name: 'league_id') int? leagueId,
    @JsonKey(name: 'season_id') int? seasonId,
    @JsonKey(name: 'stage_id') int? stageId,
    String? name,
    bool? finished,
    @JsonKey(name: 'is_current') bool? isCurrent,
    @JsonKey(name: 'starting_at') String? startingAt,
    @JsonKey(name: 'ending_at') String? endingAt,
  }) = _Round;
  factory Round.fromJson(Map<String, dynamic> json) => _$RoundFromJson(json);
}
