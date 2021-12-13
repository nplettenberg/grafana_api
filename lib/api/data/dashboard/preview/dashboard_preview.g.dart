// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardPreview _$DashboardPreviewFromJson(Map<String, dynamic> json) =>
    DashboardPreview(
      id: json['id'] as int,
      uid: json['uid'] as String,
      title: json['title'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      timezone: json['timezone'] as String,
      schemaVersion: json['schemaVersion'] as int,
      version: json['version'] as int,
    );

Map<String, dynamic> _$DashboardPreviewToJson(DashboardPreview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'title': instance.title,
      'tags': instance.tags,
      'timezone': instance.timezone,
      'schemaVersion': instance.schemaVersion,
      'version': instance.version,
    };
