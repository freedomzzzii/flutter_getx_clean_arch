import '../../services/models/task_get_datasource_model.dart';
import 'datasource.dart';

abstract class FutureDataSource implements DataSource  {
  Future<List<TaskGetResponseDataSourceModel>?> get({
    required TaskGetRequestDataSourceModel query,
  });
}
