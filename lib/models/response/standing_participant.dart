// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
part 'standing_participant.freezed.dart';
part 'standing_participant.g.dart';

@freezed
class StandingParticipant with _$StandingParticipant {
  factory StandingParticipant({
    int? id,
  
    @JsonKey(name: 'venue_id') int? venueId,
    @JsonKey(name: 'country_id') int? countryId,
    @JsonKey(name: 'short_code') String?  shortCode,
    @JsonKey(name: 'image_path') String? imagePath,
    @JsonKey(name: 'last_play_at') String? lastPlayAt,


    String? gender,
    String? name,
    int? founded,
    String? type,
    bool? placeholder

  }) = _StandingParticipant;
  factory StandingParticipant.fromJson(Map<String, dynamic> json) => _$StandingParticipantFromJson(json);
}
