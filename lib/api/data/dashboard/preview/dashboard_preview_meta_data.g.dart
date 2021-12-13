// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_preview_meta_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardPreviewMetaData _$DashboardPreviewMetaDataFromJson(
        Map<String, dynamic> json) =>
    DashboardPreviewMetaData(
      isStarred: json['isStarred'] as bool,
      url: json['url'] as String,
      folderId: json['folderId'] as int,
      folderUid: json['folderUid'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$DashboardPreviewMetaDataToJson(
        DashboardPreviewMetaData instance) =>
    <String, dynamic>{
      'isStarred': instance.isStarred,
      'url': instance.url,
      'folderId': instance.folderId,
      'folderUid': instance.folderUid,
      'slug': instance.slug,
    };
