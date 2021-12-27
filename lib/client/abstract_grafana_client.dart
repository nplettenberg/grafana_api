import 'package:dio/dio.dart';

abstract class AbstractGrafanaClient {
  const AbstractGrafanaClient();

  Future<Response<T>> get<T>(
    String path, {
    Map<String, String>? queryParameters,
    Options? options,
  });

  Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });
}
