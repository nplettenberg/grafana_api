import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dashboard_preview.g.dart';

@immutable
@JsonSerializable()
class DashboardPreview {
  const DashboardPreview({
    required this.id,
    required this.uid,
    required this.title,
    required this.tags,
    required this.timezone,
    required this.schemaVersion,
    required this.version,
  });

  factory DashboardPreview.fromJson(Map<String, dynamic> json) =>
      _$DashboardPreviewFromJson(json);

  final int id;
  final String uid;
  final String title;
  final List<String> tags;
  final String timezone;
  final int schemaVersion;
  final int version;
}
