// ignore_for_file: invalid_annotation_target

import 'package:euro_app_24/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'topscorer_response.freezed.dart';
part 'topscorer_response.g.dart';

@freezed
class TopScorerResponse with _$TopScorerResponse {
  factory TopScorerResponse({
    List<TopScorer>? data,
  }) = _TopScorerResponse;

  factory TopScorerResponse.fromJson(Map<String, dynamic> json) =>
      _$TopScorerResponseFromJson(json);
}
