// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  factory Country(
      {int? id,
      @JsonKey(name: 'continent_id') int? continentId,
      @JsonKey(name: 'official_name') String? officialName,
      @JsonKey(name: 'fifa_name') String? fifaName,
      @JsonKey(name: 'image_path') String? imagePath,
      String? name,
      String? iso2,
      String? ios3,
      // double? latitude,
      // double? longitude
      
      }) = _Country;
  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
