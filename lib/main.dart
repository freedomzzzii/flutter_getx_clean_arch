import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/modules/app_module.dart';
import 'src/modules/abc_module/abc_module.dart';
import 'src/modules/todo_module/todo_module.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final ABCModule _abcModule = ABCModule();
  final ToDoModule _todoModule = ToDoModule();
  final AppBinding _rootBinding = AppBinding();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      initialBinding: _rootBinding,
      getPages: <GetPage>[
        ..._todoModule.routeScreen,
        ..._abcModule.routeScreen,
      ],
      onReady: () {
        Get.snackbar('Hi', 'i am a modern snackbar');
      },
    );
  }
}
