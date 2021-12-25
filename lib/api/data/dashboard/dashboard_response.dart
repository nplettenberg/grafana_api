import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dashboard_response.g.dart';

@immutable
@JsonSerializable()
class DashboardResponse {
  const DashboardResponse({
    required this.meta,
    required this.dashboard,
  });

  factory DashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardResponseFromJson(json);

  final Meta meta;
  final Dashboard dashboard;
}

@JsonSerializable()
class Meta {
  const Meta({
    required this.type,
    required this.canAdmin,
    required this.canEdit,
    required this.canSave,
    required this.canStar,
    required this.created,
    required this.createdBy,
    required this.expires,
    required this.folderId,
    required this.folderTitle,
    required this.folderUid,
    required this.hasAcl,
    required this.isFolder,
    required this.provisioned,
    required this.provisionedExternalId,
    required this.slug,
    required this.updated,
    required this.updatedBy,
    required this.url,
    required this.version,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  final String type;
  final bool canSave;
  final bool canEdit;
  final bool canAdmin;
  final bool canStar;
  final String slug;
  final String url;
  final String expires;
  final String created;
  final String updated;
  final String updatedBy;
  final String createdBy;
  final int version;
  final bool hasAcl;
  final bool isFolder;
  final int folderId;
  final String folderUid;
  final String folderTitle;
  final bool provisioned;
  final String provisionedExternalId;
}

@JsonSerializable()
class Dashboard {
  const Dashboard({
    required this.version,
    required this.uid,
    required this.title,
    required this.style,
    required this.id,
    required this.editable,
    required this.fiscalYearStartMonth,
    required this.graphTooltip,
    required this.liveNow,
    required this.schemaVersion,
    required this.timezone,
    required this.weekStart,
    required this.panels,
    required this.refresh,
  });

  final List<Panel> panels;
  final String refresh;
  final bool editable;
  final int fiscalYearStartMonth;
  final int graphTooltip;
  final int id;
  final bool liveNow;
  final int schemaVersion;
  final String style;
  final String timezone;
  final String title;
  final String uid;
  final String weekStart;
  final int version;

  factory Dashboard.fromJson(Map<String, dynamic> json) =>
      _$DashboardFromJson(json);
}

@JsonSerializable()
class Panel {
  const Panel({
    required this.id,
    required this.title,
    required this.type,
    required this.pluginVersion,
    required this.gridPos,
    required this.targets,
  });

  final List<PanelTarget> targets;
  final PanelGridPosition? gridPos;
  final int id;
  final String pluginVersion;
  final String title;
  final String type;

  factory Panel.fromJson(Map<String, dynamic> json) => _$PanelFromJson(json);
}

@JsonSerializable()
class PanelGridPosition {
  const PanelGridPosition({
    required this.h,
    required this.w,
    required this.x,
    required this.y,
  });

  factory PanelGridPosition.fromJson(Map<String, dynamic> json) =>
      _$PanelGridPositionFromJson(json);

  final int h;
  final int w;
  final int x;
  final int y;
}

@JsonSerializable()
class PanelTarget {
  const PanelTarget({
    required this.alias,
    required this.measurement,
    required this.orderByTime,
    required this.policy,
    required this.refId,
    required this.resultFormat,
    required this.datasource,
    required this.select,
    required this.tags,
    required this.groupBy,
  });

  factory PanelTarget.fromJson(Map<String, dynamic> json) =>
      _$PanelTargetFromJson(json);

  final List<List<TargetSelect>> select;
  final List<TargetTag> tags;
  final PanelTargetDataSource? datasource;
  final List<GroupBy> groupBy;
  final String? alias;
  final String measurement;
  final String orderByTime;
  final String policy;
  final String refId;
  final String resultFormat;
}

@JsonSerializable()
class PanelTargetDataSource {
  const PanelTargetDataSource({
    required this.type,
    required this.uid,
  });

  factory PanelTargetDataSource.fromJson(Map<String, dynamic> json) =>
      _$PanelTargetDataSourceFromJson(json);

  final String type;
  final String uid;
}

@JsonSerializable()
class TargetSelect {
  const TargetSelect({
    required this.type,
    required this.params,
  });

  factory TargetSelect.fromJson(Map<String, dynamic> json) =>
      _$TargetSelectFromJson(json);

  final List<String> params;
  final String type;
}

@JsonSerializable()
class TargetTag {
  const TargetTag({
    required this.value,
    required this.key,
    required this.condition,
    required this.operator,
  });

  factory TargetTag.fromJson(Map<String, dynamic> json) =>
      _$TargetTagFromJson(json);

  final String? condition;
  final String key;
  final String operator;
  final String value;
}

@JsonSerializable()
class GroupBy {
  const GroupBy({
    required this.type,
    required this.params,
  });

  factory GroupBy.fromJson(Map<String, dynamic> json) =>
      _$GroupByFromJson(json);

  final List<String> params;
  final String type;
}
