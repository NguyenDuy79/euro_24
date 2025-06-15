// ignore_for_file: invalid_annotation_target

import 'package:euro_app_24/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'season_response.freezed.dart';
part 'season_response.g.dart';

@freezed
class SeasonResponse with _$SeasonResponse {
  factory SeasonResponse({
    Season? data,
  }) = _SeasonResponse;

  factory SeasonResponse.fromJson(Map<String, dynamic> json) =>
      _$SeasonResponseFromJson(json);
}
