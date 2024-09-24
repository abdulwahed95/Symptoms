import 'package:dio/dio.dart';

import '../../common/config/app_urls.dart';

Dio getNetworkObject() {
  BaseOptions options = BaseOptions(
    baseUrl: AppUrls.baseUrl,
    receiveDataWhenStatusError: true,
    connectTimeout: const Duration(milliseconds: AppUrls.connectionTimeout),
    receiveTimeout: const Duration(milliseconds: AppUrls.receiveTimeout),
  );
  Dio dio = Dio();
  dio.options = options;
  dio.options.baseUrl = AppUrls.baseUrl;
  dio.interceptors.add(LogInterceptor(
    error: true,
    request: true,
    requestBody: true,
    responseBody: true,
  ));
  dio.interceptors
      .add(QueuedInterceptorsWrapper(onRequest: (options, handler) async {
    options.headers["Content-Type"] = "application/json";
    return handler.next(options);
  }, onResponse: (response, handler) async {
    Dio tokenDio = Dio(options);
    tokenDio.interceptors
        .add(QueuedInterceptorsWrapper(onRequest: (options, handler) async {
      return handler.next(options);
    }));

    return handler.next(response);
  }, onError: (DioException e, handler) async {
    if (e.response?.statusCode == 401) {
      Dio tokenDio = Dio();
      tokenDio.options = options;
      try {} on Exception catch (e) {
        if (e is DioException) {
          if (e.response?.statusCode != 200) {
            //todo add logout logic
          }
        }
      }
    } else if (e.response?.statusCode == 500) {}
    return handler.next(e);
  }));
  return dio;
}
