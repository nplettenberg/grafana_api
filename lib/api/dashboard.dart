import 'package:grafana_api/api/data/dashboard/dashboard_response.dart';
import 'package:grafana_api/client/abstract_grafana_client.dart';

class DashboardApi {
  const DashboardApi({
    required this.client,
  });

  final AbstractGrafanaClient client;

  Future<DashboardResponse> getDashboardByUid({
    required String uid,
  }) {
    return client
        .get('dashboards/uid/$uid')
        .then((response) => DashboardResponse.fromJson(response.data!));
  }
}
