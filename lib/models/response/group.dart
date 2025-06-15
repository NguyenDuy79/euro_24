// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class Group with _$Group {
  factory Group({
    int? id,
    @JsonKey(name: 'league_id') int? leagueId,
    @JsonKey(name: 'season_id') int? seasonId,
    @JsonKey(name: 'stage_id') int? stageId,
    String? name,
    bool? finished,
    bool? pending,
    @JsonKey(name: 'is_current') bool? isCurrent,
    @JsonKey(name: 'starting_at') String? startingAt,
    @JsonKey(name: 'ending_at') String? endingAt,
    @JsonKey(name:'games_in_current_week') bool? gamesInCurrentWeek,
  }) = _Group;
  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}
