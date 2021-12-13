import 'dart:async';

import 'package:grafana_api/client/abstract_grafana_client.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

/// A function used to transform the response.
///
/// To prevent large computations from blocking the thread, response bodies are
/// decoded in an isolate by default.
typedef TransformResponse<T> = FutureOr<T> Function(Response response);

class GrafanaClient extends AbstractGrafanaClient {
  GrafanaClient({
    required this.apiKey,
    required String baseUrl,
  }) : super(baseUrl: baseUrl);

  final http.Client client = http.Client();

  final String apiKey;

  Map<String, String> get defaultHeaders => {
        'Authorization': 'Bearer $apiKey',
      };

  @override
  Future<http.Response> get(
    Uri uri, {
    Map<String, String>? headers,
  }) {
    final requestHeaders = defaultHeaders;

    if (headers != null) {
      requestHeaders.addAll(headers);
    }

    return client.get(uri, headers: requestHeaders).then((response) {
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return response;
      }

      return Future.error(response.body);
    });
  }
}
