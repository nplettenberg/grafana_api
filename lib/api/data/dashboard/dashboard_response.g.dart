// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardResponse _$DashboardResponseFromJson(Map<String, dynamic> json) =>
    DashboardResponse(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      dashboard: Dashboard.fromJson(json['dashboard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DashboardResponseToJson(DashboardResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'dashboard': instance.dashboard,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      type: json['type'] as String,
      canAdmin: json['canAdmin'] as bool,
      canEdit: json['canEdit'] as bool,
      canSave: json['canSave'] as bool,
      canStar: json['canStar'] as bool,
      created: json['created'] as String,
      createdBy: json['createdBy'] as String,
      expires: json['expires'] as String,
      folderId: json['folderId'] as int,
      folderTitle: json['folderTitle'] as String,
      folderUid: json['folderUid'] as String,
      hasAcl: json['hasAcl'] as bool,
      isFolder: json['isFolder'] as bool,
      provisioned: json['provisioned'] as bool,
      provisionedExternalId: json['provisionedExternalId'] as String,
      slug: json['slug'] as String,
      updated: json['updated'] as String,
      updatedBy: json['updatedBy'] as String,
      url: json['url'] as String,
      version: json['version'] as int,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'type': instance.type,
      'canSave': instance.canSave,
      'canEdit': instance.canEdit,
      'canAdmin': instance.canAdmin,
      'canStar': instance.canStar,
      'slug': instance.slug,
      'url': instance.url,
      'expires': instance.expires,
      'created': instance.created,
      'updated': instance.updated,
      'updatedBy': instance.updatedBy,
      'createdBy': instance.createdBy,
      'version': instance.version,
      'hasAcl': instance.hasAcl,
      'isFolder': instance.isFolder,
      'folderId': instance.folderId,
      'folderUid': instance.folderUid,
      'folderTitle': instance.folderTitle,
      'provisioned': instance.provisioned,
      'provisionedExternalId': instance.provisionedExternalId,
    };

Dashboard _$DashboardFromJson(Map<String, dynamic> json) => Dashboard(
      version: json['version'] as int,
      uid: json['uid'] as String,
      title: json['title'] as String,
      style: json['style'] as String,
      id: json['id'] as int,
      editable: json['editable'] as bool,
      fiscalYearStartMonth: json['fiscalYearStartMonth'] as int,
      graphTooltip: json['graphTooltip'] as int,
      liveNow: json['liveNow'] as bool,
      schemaVersion: json['schemaVersion'] as int,
      timezone: json['timezone'] as String,
      weekStart: json['weekStart'] as String,
      panels: (json['panels'] as List<dynamic>)
          .map((e) => Panel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DashboardToJson(Dashboard instance) => <String, dynamic>{
      'panels': instance.panels,
      'editable': instance.editable,
      'fiscalYearStartMonth': instance.fiscalYearStartMonth,
      'graphTooltip': instance.graphTooltip,
      'id': instance.id,
      'liveNow': instance.liveNow,
      'schemaVersion': instance.schemaVersion,
      'style': instance.style,
      'timezone': instance.timezone,
      'title': instance.title,
      'uid': instance.uid,
      'weekStart': instance.weekStart,
      'version': instance.version,
    };

Panel _$PanelFromJson(Map<String, dynamic> json) => Panel(
      id: json['id'] as int,
      title: json['title'] as String,
      type: json['type'] as String,
      pluginVersion: json['pluginVersion'] as String,
      gridPos:
          PanelGridPosition.fromJson(json['gridPos'] as Map<String, dynamic>),
      targets: (json['targets'] as List<dynamic>)
          .map((e) => PanelTarget.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PanelToJson(Panel instance) => <String, dynamic>{
      'targets': instance.targets,
      'gridPos': instance.gridPos,
      'id': instance.id,
      'pluginVersion': instance.pluginVersion,
      'title': instance.title,
      'type': instance.type,
    };

PanelGridPosition _$PanelGridPositionFromJson(Map<String, dynamic> json) =>
    PanelGridPosition(
      h: json['h'] as int,
      w: json['w'] as int,
      x: json['x'] as int,
      y: json['y'] as int,
    );

Map<String, dynamic> _$PanelGridPositionToJson(PanelGridPosition instance) =>
    <String, dynamic>{
      'h': instance.h,
      'w': instance.w,
      'x': instance.x,
      'y': instance.y,
    };

PanelTarget _$PanelTargetFromJson(Map<String, dynamic> json) => PanelTarget(
      alias: json['alias'] as String,
      measurement: json['measurement'] as String,
      orderByTime: json['orderByTime'] as String,
      policy: json['policy'] as String,
      refId: json['refId'] as String,
      resultFormat: json['resultFormat'] as String,
      datasource: PanelTargetDataSource.fromJson(
          json['datasource'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PanelTargetToJson(PanelTarget instance) =>
    <String, dynamic>{
      'datasource': instance.datasource,
      'alias': instance.alias,
      'measurement': instance.measurement,
      'orderByTime': instance.orderByTime,
      'policy': instance.policy,
      'refId': instance.refId,
      'resultFormat': instance.resultFormat,
    };

PanelTargetDataSource _$PanelTargetDataSourceFromJson(
        Map<String, dynamic> json) =>
    PanelTargetDataSource(
      type: json['type'] as String,
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$PanelTargetDataSourceToJson(
        PanelTargetDataSource instance) =>
    <String, dynamic>{
      'type': instance.type,
      'uid': instance.uid,
    };
