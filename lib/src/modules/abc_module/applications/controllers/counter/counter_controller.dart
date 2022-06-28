import 'package:get/get.dart';

import '../../../counter_impl_usecase.dart';
import '../../../domains/entities/counter_increment_entity.dart';
import 'counter_controller_state.dart';

abstract class CounterController {
  void increment();
}

class CounterImplController extends GetxController
    implements CounterController {
  CounterImplController({required CounterImplUseCase usecase})
      : _usecase = usecase;

  CounterState _state = const CounterInitialState();
  final CounterImplUseCase _usecase;

  CounterState get state => _state;

  @override
  void increment() {
    final CounterIncrementResponseEntity counterResponse = _usecase.increment(
        requestIncrement: CounterIncrementRequestEntity(
            numberOfIncrement: 1, summary: _state.summary));

    _state = CounterIncrementState(
        summary: counterResponse.summary, status: CounterStatusState.success);

    update();
  }
}
