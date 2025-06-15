import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Team with _$Team {
  factory Team({
    int? id,
    @JsonKey(name: 'sport_id') int? sportId,
    @JsonKey(name: 'country_id') int? countryId,
    @JsonKey(name: 'venue_id') int? venueId,
    gender,
    name,
    @JsonKey(name: 'short_code') String?  shortCode,
    @JsonKey(name: 'image_path') String?  imagePath,
    founded,
    type,
    bool? placeholder,
    @JsonKey(name: 'last_played_at') String? lastPlayedAt,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) =>
      _$TeamFromJson(json);
}