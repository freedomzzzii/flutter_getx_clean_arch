import 'package:equatable/equatable.dart';
import 'package:get/get.dart';

class CountNumber extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update();
  }
}

abstract class TaskEvent extends Equatable {
  const TaskEvent();
  
}


