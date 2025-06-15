// ignore_for_file: invalid_annotation_target

import 'package:euro_app_24/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'topscorer.freezed.dart';
part 'topscorer.g.dart';

@freezed
class TopScorer with _$TopScorer {
  factory TopScorer({
    int? id,
    @JsonKey(name: 'season_id') int? seasonId,
    @JsonKey(name: 'player_id') int? playerId,
    @JsonKey(name: 'type_id') int? typeId,
    int? position,
    int? total,
    @JsonKey(name: 'participant_id') int? participantId,
    Player? player,
  }) = _TopScorer;

  factory TopScorer.fromJson(Map<String, dynamic> json) =>
      _$TopScorerFromJson(json);
}
