// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'new.freezed.dart';
part 'new.g.dart';

@freezed
class New with _$New {
  factory New({
    int? id,
    String? href,
    @JsonKey(name: 'img_src') String? imageSrc,
    @JsonKey(name: 'article_title') String? articleTitle,
    @JsonKey(name: 'article_description') String? articleDescription,
    @JsonKey(name: 'article_footer') String? articleFooter,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _New;
  factory New.fromJson(Map<String, dynamic> json) => _$NewFromJson(json);
}
