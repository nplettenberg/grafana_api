import 'dart:io';

import 'package:dio/dio.dart';
import 'package:grafana_api/grafana_api.dart';

class Query {
  const Query({
    required this.query,
    required this.database,
  });

  final String query;
  final String database;
}

class DataSourceApi {
  const DataSourceApi({
    required this.client,
  });

  final AbstractGrafanaClient client;

  Future<DataSource> getDataSourceById({
    required String dataSourceId,
  }) {
    return client
        .get<Map<String, dynamic>>('datasources/$dataSourceId')
        .then((response) => DataSource.fromJson(response.data!));
  }

  Future<DataSourceResult> queryDataSource({
    required Query query,
    required String dataSource,
    required String epoch,
  }) async {
    final response = await client.get<Map<String, dynamic>>(
      'datasources/proxy/$dataSource/query?db=${query.database}&q=${query.query}&epoch=$epoch',
      options: Options(
        contentType:
            ContentType.parse("application/x-www-form-urlencoded").toString(),
      ),
    );

    return DataSourceResult.fromJson(response.data!);
  }
}
