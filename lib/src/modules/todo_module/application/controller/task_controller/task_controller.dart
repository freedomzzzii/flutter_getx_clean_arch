import 'package:get/get.dart';

import '../../../domains/entities/task_get_entity.dart';
import '../../../task_impl_usecase.dart';
import '../../models/task_controller_models/task_get_controller_model.dart';

class TaskController extends GetxController {
  TaskController({required TaskImplUseCase usecase}) : _usecase = usecase;

  final TaskImplUseCase _usecase;

  Future<List<TaskGetResponseControllerModel>> getTask(
      String sortBy, String orderBy) async {
    try {
      final List<TaskGetResponseEntity>? responseUseCase = await _usecase.get(
        query: TaskGetRequestEntity(
          sortBy: sortBy,
          orderBy: orderBy,
        ),
      );

      final List<TaskGetResponseControllerModel> taskGetResponseBlocModel =
          responseUseCase == null
              ? <TaskGetResponseControllerModel>[]
              : responseUseCase.map((TaskGetResponseEntity task) {
                  return TaskGetResponseControllerModel(
                    id: task.id,
                    title: task.title,
                    isDone: task.isDone,
                    imageUrl: task.imageUrl,
                    createdAt: task.createdAt,
                  );
                }).toList();

      return taskGetResponseBlocModel;
    } catch (e) {
      rethrow;
    }
  }
}
