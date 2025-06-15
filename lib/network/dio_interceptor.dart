import 'package:dio/dio.dart';

class RequestInterceptor extends Interceptor {
  final Map<String, String> headers;

  RequestInterceptor({required this.headers});
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String queryParams = _getQueryParams(options.queryParameters);
    return handler.next(options.copyWith(
      path: '${options.path}?$queryParams',
      queryParameters: null,
    ));
  }

  String _getQueryParams(Map<String, dynamic> map) {
    String result = "";
    map.forEach((key, value) {
      result += "$key=$value&";
    });
    if (result.isNotEmpty) {
      if (result[result.length - 1] == '&') {
        result = result.substring(0, result.length - 1);
      }
    }

    return result;
  }
}

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
        throw ConnectionTimeOutException(err.requestOptions);
      case DioExceptionType.sendTimeout:
        throw SendTimeOutException(err.requestOptions);
      case DioExceptionType.receiveTimeout:
        throw ReceiveTimeOutException(err.requestOptions);
      case DioExceptionType.badResponse:
        throw BadResponseException(err.requestOptions, err.response);
      default:
        break;
    }
    return handler.next(err);
  }
}

class ConnectionTimeOutException extends DioException {
  ConnectionTimeOutException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Connection Timed out, Please try again';
  }
}

class SendTimeOutException extends DioException {
  SendTimeOutException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Send Timed out, Please try again';
  }
}

class ReceiveTimeOutException extends DioException {
  ReceiveTimeOutException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Receive Timed out, Please try again';
  }
}

class BadResponseException extends DioException {
  BadResponseException(
    RequestOptions r,
    Response? response,
  ) : super(requestOptions: r, response: response);

  @override
  String toString() {
    return 'Bad response. Please try again';
  }
}
