import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'datasource.g.dart';

@immutable
@JsonSerializable()
class DataSource {
  const DataSource({
    required this.uid,
    required this.database,
    required this.type,
    required this.id,
    required this.url,
    required this.name,
    required this.user,
    required this.access,
    required this.basicAuth,
    required this.basicAuthPassword,
    required this.basicAuthUser,
    required this.isDefault,
    required this.jsonData,
    required this.orgId,
    required this.password,
    required this.readOnly,
    required this.secureJsonFields,
    required this.typeLogoUrl,
    required this.withCredentials,
  });

  factory DataSource.fromJson(Map<String, dynamic> json) =>
      _$DataSourceFromJson(json);

  final int id;
  final String uid;
  final int orgId;
  final String name;
  final String type;
  final String typeLogoUrl;
  final String access;
  final String url;
  final String password;
  final String user;
  final String database;
  final bool basicAuth;
  final String basicAuthUser;
  final String basicAuthPassword;
  final bool withCredentials;
  final bool isDefault;
  final bool readOnly;
  final Map<String, dynamic> jsonData;
  final Map<String, dynamic> secureJsonFields;
}

@JsonSerializable()
class DataSourceResult {
  const DataSourceResult({
    required this.results,
  });

  factory DataSourceResult.fromJson(Map<String, dynamic> json) =>
      _$DataSourceResultFromJson(json);

  final List<StatementResult> results;
}

@JsonSerializable()
class StatementResult {
  const StatementResult({
    required this.statementId,
    required this.series,
  });

  factory StatementResult.fromJson(Map<String, dynamic> json) =>
      _$StatementResultFromJson(json);

  @JsonKey(name: 'statement_id')
  final int statementId;
  final List<Series> series;
}

@JsonSerializable()
class Series {
  const Series({
    required this.name,
    required this.columns,
    required this.values,
  });

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);

  final String name;
  final List<String> columns;
  final List<List<double>> values;

  Map<String, dynamic> toJson() => _$SeriesToJson(this);
}
