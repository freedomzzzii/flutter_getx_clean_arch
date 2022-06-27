import 'package:get/get.dart';

import 'abc_module/applications/controllers/counter/counter_controller.dart';

abstract class Module {
  final List<GetPage> routeScreen = <GetPage>[];
}

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CountNumber>(CountNumber());
  }
}
