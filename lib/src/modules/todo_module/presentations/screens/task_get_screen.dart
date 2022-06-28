import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../abc_module/applications/controllers/counter/counter_controller.dart';
import '../../application/controller/task_controller/task_controller.dart';
import '../widgets/bottombar_widget.dart';

class GetTaskScreen extends StatelessWidget {
  GetTaskScreen({Key? key}) : super(key: key);

  final TaskController _taskController = Get.find();
  final _countNumber = Get.find<CounterImplController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GET SCREEN'),
      ),
      body: Center(
          child: Column(
        children: [
          Text('body'),
          GetBuilder<CounterImplController>(
            init: _countNumber, // INIT IT ONLY THE FIRST TIME
            builder: (_) => Text(
              '${_.state.summary}',
            ),
          ),
        ],
      )),
      bottomNavigationBar: const BottomBar(currentTabIndex: 0),
    );
  }
}
