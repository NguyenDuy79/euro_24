import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

import '../../network/index.dart';

class ApiNewService extends GetxService {
  final String baseUrl;
  ApiNewService(this.baseUrl);

  late final dio.Dio _dio;
  dio.Dio get client => _dio;

  void setBaseUrl({String baseUrl = ""}) {
    _dio.options.baseUrl = baseUrl;
  }

  @override
  void onInit() {
    _dio = dio.Dio(dio.BaseOptions(baseUrl: baseUrl));
    _dio.interceptors.addAll({ErrorInterceptor()});
    super.onInit();
  }
}
