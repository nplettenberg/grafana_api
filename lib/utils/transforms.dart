import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:grafana_api/api/data/dashboard/preview/single_dashboard.dart';
import 'package:http/http.dart';

Future<SingleDashboard> defaultSingleDashboardTransform(
    Response response) async {
  return await compute<String, SingleDashboard>(
    _isolateTransformSingleDashboard,
    response.body,
  );
}

SingleDashboard _isolateTransformSingleDashboard(String body) {
  return SingleDashboard.fromJson(jsonDecode(body));
}
