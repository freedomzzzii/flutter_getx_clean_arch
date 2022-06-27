import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../app_module.dart';
import 'application/controller/task_controller/task_controller.dart';
import 'presentations/screens/home_screen.dart';
import 'presentations/screens/task_get_screen.dart';
import 'services/datasources/api_datasources.dart';
import 'task_impl_repository.dart';
import 'task_impl_usecase.dart';

class ToDoModule implements Module {
  @override
  List<GetPage> routeScreen = <GetPage>[
    GetPage(
      name: '/',
      page: () => GetTaskScreen(),
      binding: BindingsBuilder(() {
        Get.put(
          TaskController(
            usecase: TaskImplUseCase(
              repository: TaskImplRepository(
                dataSource: ApiDataSource(
                  http: Dio(),
                ),
              ),
            ),
          ),
        );
      }),
    ),
    GetPage(
      name: '/home',
      page: () => const MyHomePage(
        title: 'HOME',
      ),
      transition: Transition.zoom,
    ),
  ];
}
