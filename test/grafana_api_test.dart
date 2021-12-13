import 'package:flutter_test/flutter_test.dart';
import 'package:grafana_api/client/grafana_client.dart';
import 'package:grafana_api/grafana_api_base.dart';

void main() {
  test('wow', () async {
    final api = GrafanaBaseApi(
      client: GrafanaClient(
        apiKey:
            'eyJrIjoiRHdCdUlMRnlmUWgxTEVFS2d6YjJUeEpLZUdicWR6a0giLCJuIjoidGVzdCIsImlkIjoxfQ==',
        baseUrl: 'http://192.168.178.54:3000',
      ),
    );

    print(await api.dashboardApi.getDashboardByUid(uid: '000000013'));
  });
}
