import 'package:dio/dio.dart';

import '../../services/datasources/api_datasources.dart';

abstract class DataSource {
  factory DataSource({required Dio dio}) {
    return ApiDataSource(http: dio);
  }
}
