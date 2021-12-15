import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:grafana_api/api/data/dashboard/dashboard_response.dart';
import 'package:http/http.dart';

Future<DashboardResponse> defaultDashboardResponseTransform(
    Response response) async {
  return await compute<String, DashboardResponse>(
    _isolateTransformDashboardResponse,
    response.body,
  );
}

DashboardResponse _isolateTransformDashboardResponse(String body) {
  return DashboardResponse.fromJson(jsonDecode(body));
}
