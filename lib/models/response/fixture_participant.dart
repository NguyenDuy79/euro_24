// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'fixture_participant.freezed.dart';
part 'fixture_participant.g.dart';

@freezed
class FixtureParticipant with _$FixtureParticipant {
  factory FixtureParticipant({
    int? id,
    @JsonKey(name: 'sport_id') int? sportId,
    @JsonKey(name: 'country_id') int? countryId,
    @JsonKey(name: 'venue_id') int? venueId,
    String? gender,
    String? name,
    @JsonKey(name: 'short_code') String? shortCode,
    @JsonKey(name: 'image_path') String? imagePath,
    int? founded,
    String? type,
    bool? placeholder,
    @JsonKey(name: 'last_played_at') String? lastPlayedAt,
  }) = _FixtureParticipant;

  factory FixtureParticipant.fromJson(Map<String, dynamic> json) =>
      _$FixtureParticipantFromJson(json);
}
