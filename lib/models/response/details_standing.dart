// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
part 'details_standing.freezed.dart';
part 'details_standing.g.dart';

@freezed
class DetailsStanding with _$DetailsStanding  {
  factory DetailsStanding (
      {int? id,
      @JsonKey(name: 'standing_id') int? standingId,
     
      @JsonKey(name: 'type_id') int? typeId,
      int? value,
     
      
      }) = _DetailsStanding ;
  factory DetailsStanding.fromJson(Map<String, dynamic> json) =>
      _$DetailsStandingFromJson(json);
}
