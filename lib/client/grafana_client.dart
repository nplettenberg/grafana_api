import 'dart:async';

import 'package:dio/dio.dart';
import 'package:grafana_api/client/abstract_grafana_client.dart';

/// A function used to transform the response.
///
/// To prevent large computations from blocking the thread, response bodies are
/// decoded in an isolate by default.
typedef TransformResponse<T> = FutureOr<T> Function(Response response);

class TokenInterceptor extends InterceptorsWrapper {
  TokenInterceptor({
    required this.apiToken,
  });

  final String apiToken;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = 'Bearer $apiToken';

    handler.next(options);
  }
}

class GrafanaClient extends AbstractGrafanaClient {
  GrafanaClient({
    required String apiKey,
    required String baseUrl,
  }) {
    client = Dio(BaseOptions(
      baseUrl: '$baseUrl/api/',
    ));

    client.interceptors.addAll([
      TokenInterceptor(apiToken: apiKey),
      LogInterceptor(),
    ]);
  }

  late final Dio client;

  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, String>? queryParameters,
    Options? options,
  }) async {
    try {
      return await client.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
      );
    } catch (e, st) {
      return Future.error(e, st);
    }
  }
}
