// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'score.freezed.dart';
part 'score.g.dart';

@freezed
class ScoreObject with _$ScoreObject {
  factory ScoreObject({
    int? id,
    @JsonKey(name: 'fixture_id') int? fixtureId,
    @JsonKey(name: 'participant_id') int? participantId,
    Score? score,
    String? description,
  }) = _ScoreObject;

  factory ScoreObject.fromJson(Map<String, dynamic> json) =>
      _$ScoreObjectFromJson(json);
}

@freezed
class Score with _$Score {
  factory Score({
    int? goals,
    String? participant,
  }) = _Score;

  factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);
}
