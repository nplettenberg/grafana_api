import 'package:grafana_api/api/data/dashboard/dashboard_response.dart';
import 'package:grafana_api/client/abstract_grafana_client.dart';

class DashboardApi {
  const DashboardApi({
    required this.client,
  });

  final AbstractGrafanaClient client;

  /// Will return the dashboard given the dashboard unique identifier (uid).
  /// Information about the unique identifier of a folder containing the
  /// requested dashboard might be found in the metadata.
  Future<DashboardResponse> getDashboardByUid({
    required String uid,
  }) {
    return client
        .get('dashboards/uid/$uid')
        .then((response) => DashboardResponse.fromJson(response.data!));
  }

  /// Will return the redirect url for the dashboard that was
  /// set as home.
  Future<HomeDashboardResponse> getHomeDashboard() {
    return client
        .get('dashboards/home')
        .then((response) => HomeDashboardResponse.fromJson(response.data));
  }

  /// Will return the dashboard that was set as home.
  ///
  /// This method is going to perform two requests.
  /// 1. Get the redirect url for the home dashboard
  /// 2. Parse the uid out of the redirect url
  /// 3. Load the [DashboardResponse] for the parsed uid
  Future<DashboardResponse> loadHomeDashboard() async {
    final homeDashboard = await getHomeDashboard();

    final uid = homeDashboard.uid;
    if (uid == null) {
      return Future.error('No home dashboard set');
    }

    return getDashboardByUid(uid: uid);
  }

  /// Loads all existing [DashboardTag]'s.
  Future<List<DashboardTag>> getDashboardTags() {
    return client.get('dashboards/tags').then((response) {
      final data = response.data;

      if (data is List<Map<String, dynamic>>) {
        return data.map((e) => DashboardTag.fromJson(e)).toList();
      } else {
        return Future.error('Could not parse response');
      }
    });
  }

  /// Deletes the Dashboard with the specified [uid].
  Future<DashboardDeletedResponse> deleteDashboard({
    required String uid,
  }) {
    return client
        .delete('dashboards/uid/$uid')
        .then((response) => DashboardDeletedResponse.fromJson(response.data));
  }
}
