import 'package:grafana_api/grafana_api.dart';

class GrafanaBaseApi {
  GrafanaBaseApi({
    required this.client,
  })  : dashboardApi = DashboardApi(client: client),
        dataSourceApi = DataSourceApi(client: client);

  final AbstractGrafanaClient client;

  final DashboardApi dashboardApi;

  final DataSourceApi dataSourceApi;
}
