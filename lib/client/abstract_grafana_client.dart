import 'package:http/http.dart';

abstract class AbstractGrafanaClient {
  const AbstractGrafanaClient({
    required this.baseUrl,
  });

  final String baseUrl;

  bool get isHttps => baseUrl.startsWith('https://');

  String get host =>
      baseUrl.replaceAll('https://', '').replaceAll('http://', '');

  Uri buildUrl(
    String path, {
    Map<String, String>? queryParameters,
  }) {
    if (isHttps) {
      return Uri.https(host, '/api/$path', queryParameters);
    }

    return Uri.http(host, '/api/$path', queryParameters);
  }

  Future<Response> get(
    Uri uri, {
    Map<String, String>? headers,
  });
}
