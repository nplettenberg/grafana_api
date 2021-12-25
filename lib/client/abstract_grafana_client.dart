import 'package:dio/dio.dart';

abstract class AbstractGrafanaClient {
  const AbstractGrafanaClient();

  Future<Response<T>> get<T>(
    String path, {
    Map<String, String>? queryParameters,
    Options? options,
  });
}
