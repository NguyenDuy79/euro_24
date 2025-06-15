import 'dart:developer';

import 'package:dio/dio.dart' as dio;
import 'package:euro_app_24/core/base/base_result.dart';
import 'package:euro_app_24/core/enum/index.dart';
import 'package:euro_app_24/core/service/api_new_service.dart';
import 'package:euro_app_24/models/index.dart';
import 'package:get/get.dart';
import '../../network/index.dart';
import '../service/index.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

class BaseProvider {
  final ApiMainService _service = Get.find();
  final ApiNewService _newService = Get.find();
  Map<String, String> headers = {};
  void setHeaders(Map<String, String> headers) {
    this.headers = headers;
  }

  Future<BaseResult<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dio.Options? options,
    dio.CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
    bool addRequestInterceptor = true,
    T Function(Map<String, dynamic> data)? decoder,
  }) async {
    log("GETTING API FROM : ${_service.client.options.baseUrl + path}");
    if (addRequestInterceptor) {
      _service.client.interceptors.add(RequestInterceptor(headers: headers));
    }
    log("QUERY PARAMS => $queryParameters");
    try {
      dio.Response response = await _service.client.get(
        path,
        onReceiveProgress: onReceiveProgress,
        cancelToken: cancelToken,
        options: options,
        queryParameters: queryParameters,
      );

      if (decoder != null) {
        return BaseResult(
          type: ResultType.data,
          result: decoder(response.data),
        );
      }

      return BaseResult(
        type: ResultType.data,
        result: response.data,
      );
    } on Exception catch (e) {
      log("EXCEPTION => ${e.toString()}");
      return BaseResult(
        type: ResultType.error,
        error: ErrorResult(error: e),
      );
    }
  }

  Future<BaseResult<T>?> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    dio.Options? options,
    dio.CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    bool addRequestInterceptor = true,
    required T Function(dynamic data)? decoder,
  }) async {
    log("URL : ${_service.client.options.baseUrl + path}");
    log("Request body : $data");
    if (addRequestInterceptor) {
      _service.client.interceptors.add(RequestInterceptor(headers: headers));
    }
    dio.Response response = await _service.client.post(path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress);
    if (response.data['error'] ?? false) {
      return BaseResult(
        type: ResultType.error,
        error: ErrorResult(error: response.data),
      );
    }
    if (decoder != null) {
      return BaseResult(type: ResultType.data, result: decoder(response.data));
    }
    return null;
  }

  Future<BaseResult<News>> getNewsData(
    String path, {
    Map<String, dynamic>? queryParameters,
    dio.Options? options,
    dio.CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
    bool addRequestInterceptor = true,
    News Function(Map<String, dynamic> data)? decoder,
  }) async {
    log("GETTING API FROM :  ${_newService.client.options.baseUrl + path};");
    if (addRequestInterceptor) {
      _newService.client.interceptors.add(RequestInterceptor(headers: headers));
    }

    try {
      dio.Response response = await _newService.client.get(
        path,
        queryParameters: queryParameters,
      );
      if (decoder != null) {
        return BaseResult(
          type: ResultType.data,
          result: decoder(response.data),
        );
      }
      return BaseResult(
        type: ResultType.data,
        result: News.fromJson(response.data),
      );
    } on Exception catch (e) {
      log("EXCEPTION => ${e.toString()}");
      return BaseResult(
        type: ResultType.error,
        error: ErrorResult(error: e),
      );
    }
  }
}
