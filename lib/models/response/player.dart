// ignore_for_file: invalid_annotation_target

import 'package:euro_app_24/models/response/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  factory Player({
    int? id,
    @JsonKey(name: 'sport_id') int? sportId,
    @JsonKey(name: 'country_id') int? countryId,
    @JsonKey(name: 'nationality_id') int? nationalityId,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'position_id') int? positionId,
    @JsonKey(name: 'detailed_position_id') int? detailedPositionId,
    @JsonKey(name: 'type_id') int? typeId,
    @JsonKey(name: 'common_name') String? commonName,
    Country? country,
    String? firstname,
    String? lastname,
    String? name,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'image_path') String? imagePath,
    int? height,
    int? weight,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    String? gender,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
