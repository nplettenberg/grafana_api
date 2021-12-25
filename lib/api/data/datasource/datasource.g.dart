// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datasource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataSource _$DataSourceFromJson(Map<String, dynamic> json) => DataSource(
      uid: json['uid'] as String,
      database: json['database'] as String,
      type: json['type'] as String,
      id: json['id'] as int,
      url: json['url'] as String,
      name: json['name'] as String,
      user: json['user'] as String,
      access: json['access'] as String,
      basicAuth: json['basicAuth'] as bool,
      basicAuthPassword: json['basicAuthPassword'] as String,
      basicAuthUser: json['basicAuthUser'] as String,
      isDefault: json['isDefault'] as bool,
      jsonData: json['jsonData'] as Map<String, dynamic>,
      orgId: json['orgId'] as int,
      password: json['password'] as String,
      readOnly: json['readOnly'] as bool,
      secureJsonFields: json['secureJsonFields'] as Map<String, dynamic>,
      typeLogoUrl: json['typeLogoUrl'] as String,
      withCredentials: json['withCredentials'] as bool,
    );

Map<String, dynamic> _$DataSourceToJson(DataSource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'orgId': instance.orgId,
      'name': instance.name,
      'type': instance.type,
      'typeLogoUrl': instance.typeLogoUrl,
      'access': instance.access,
      'url': instance.url,
      'password': instance.password,
      'user': instance.user,
      'database': instance.database,
      'basicAuth': instance.basicAuth,
      'basicAuthUser': instance.basicAuthUser,
      'basicAuthPassword': instance.basicAuthPassword,
      'withCredentials': instance.withCredentials,
      'isDefault': instance.isDefault,
      'readOnly': instance.readOnly,
      'jsonData': instance.jsonData,
      'secureJsonFields': instance.secureJsonFields,
    };

DataSourceResult _$DataSourceResultFromJson(Map<String, dynamic> json) =>
    DataSourceResult(
      results: (json['results'] as List<dynamic>)
          .map((e) => StatementResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataSourceResultToJson(DataSourceResult instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

StatementResult _$StatementResultFromJson(Map<String, dynamic> json) =>
    StatementResult(
      statementId: json['statement_id'] as int,
      series: (json['series'] as List<dynamic>)
          .map((e) => Series.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StatementResultToJson(StatementResult instance) =>
    <String, dynamic>{
      'statement_id': instance.statementId,
      'series': instance.series,
    };

Series _$SeriesFromJson(Map<String, dynamic> json) => Series(
      name: json['name'] as String,
      columns:
          (json['columns'] as List<dynamic>).map((e) => e as String).toList(),
      values: (json['values'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$SeriesToJson(Series instance) => <String, dynamic>{
      'name': instance.name,
      'columns': instance.columns,
      'values': instance.values,
    };
