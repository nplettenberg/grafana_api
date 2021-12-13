import 'package:grafana_api/api/dashboard.dart';
import 'package:grafana_api/client/abstract_grafana_client.dart';

class GrafanaBaseApi {
  GrafanaBaseApi({
    required this.client,
  }) : dashboardApi = DashboardApi(client: client);

  final AbstractGrafanaClient client;

  final DashboardApi dashboardApi;
}
