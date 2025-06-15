// ignore_for_file: invalid_annotation_target

import 'package:euro_app_24/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'season.freezed.dart';
part 'season.g.dart';

@freezed
class Season with _$Season {
  factory Season({
    int? id,
    @JsonKey(name: 'league_id') int? leagueId,
    String? name,
    bool? finished,
    bool? pending,
    @JsonKey(name: 'is_current') bool? isCurrent,
    @JsonKey(name: 'starting_at') String? startingAt,
    @JsonKey(name: 'ending_at') String? endingAt,
    List<Fixture>? fixtures,
    List<Group>? groups,
    List<Round>? rounds,
  }) = _Season;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}
