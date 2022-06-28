import 'package:get/get.dart';

import 'abc_module/applications/controllers/counter/counter_controller.dart';
import 'abc_module/counter_impl_usecase.dart';

abstract class Module {
  final List<GetPage> routeScreen = <GetPage>[];
}

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CounterImplController>(
        CounterImplController(usecase: CounterImplUseCase()));
  }
}
