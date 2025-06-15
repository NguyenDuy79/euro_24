import 'package:euro_app_24/models/response/new.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part'news.freezed.dart';
part 'news.g.dart';


@freezed

class  News with _$News {
   factory News({
    int? count,
    String? next,
    String? previous,
    int? success,
    String? message,
    List<New>? data,
    
   }) = _News;
   factory News.fromJson(Map<String,dynamic> json) => _$NewsFromJson(json);
}