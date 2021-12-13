// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleDashboard _$SingleDashboardFromJson(Map<String, dynamic> json) =>
    SingleDashboard(
      meta: DashboardPreviewMetaData.fromJson(
          json['meta'] as Map<String, dynamic>),
      dashboard:
          DashboardPreview.fromJson(json['dashboard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SingleDashboardToJson(SingleDashboard instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'dashboard': instance.dashboard,
    };
