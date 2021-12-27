import 'package:flutter_test/flutter_test.dart';
import 'package:grafana_api/grafana_api.dart';

void main() {
  test('wow', () async {
    final api = GrafanaApi(
      client: GrafanaClient(
        apiKey:
            'eyJrIjoiOEtkR1lWSU5lU1ppb0hJRVQyVjlnQUUzQkpjNVlwQnMiLCJuIjoidGVzdCIsImlkIjoxfQ==',
        baseUrl: 'http://192.168.178.54:3000',
      ),
    );

    print(await api.dashboardApi.getDashboardByUid(uid: '000000013'));
  });
}
