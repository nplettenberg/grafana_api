import 'package:grafana_api/api/data/dashboard/dashboard_response.dart';
import 'package:grafana_api/client/abstract_grafana_client.dart';
import 'package:grafana_api/client/grafana_client.dart';
import 'package:grafana_api/utils/transforms.dart';

class DashboardApi {
  const DashboardApi({
    required this.client,
  });

  final AbstractGrafanaClient client;

  Future<DashboardResponse> getDashboardByUid({
    required String uid,
    TransformResponse<DashboardResponse> transform =
        defaultDashboardResponseTransform,
  }) {
    return client.get(client.buildUrl('dashboards/uid/$uid')).then(transform);
  }
}
