import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dashboard_preview_meta_data.g.dart';

@immutable
@JsonSerializable()
class DashboardPreviewMetaData {
  const DashboardPreviewMetaData({
    required this.isStarred,
    required this.url,
    required this.folderId,
    required this.folderUid,
    required this.slug,
  });

  factory DashboardPreviewMetaData.fromJson(Map<String, dynamic> json) =>
      _$DashboardPreviewMetaDataFromJson(json);

  final bool isStarred;

  final String url;

  final int folderId;

  final String folderUid;

  @Deprecated("Deprecated in Grafana v5.0")
  final String slug;
}
