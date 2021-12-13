import 'package:flutter/foundation.dart';
import 'package:grafana_api/api/data/dashboard/preview/dashboard_preview.dart';
import 'package:grafana_api/api/data/dashboard/preview/dashboard_preview_meta_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'single_dashboard.g.dart';

@immutable
@JsonSerializable()
class SingleDashboard {
  const SingleDashboard({
    required this.meta,
    required this.dashboard,
  });

  factory SingleDashboard.fromJson(Map<String, dynamic> json) =>
      _$SingleDashboardFromJson(json);

  final DashboardPreviewMetaData meta;
  final DashboardPreview dashboard;
}
