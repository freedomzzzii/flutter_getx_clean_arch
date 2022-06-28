import 'package:flutter_test/flutter_test.dart';
import 'package:getx/src/modules/abc_module/applications/controllers/counter/counter_controller.dart';
import 'package:getx/src/modules/abc_module/applications/controllers/counter/counter_controller_state.dart';
import 'package:getx/src/modules/abc_module/counter_impl_usecase.dart';
import 'package:getx/src/modules/abc_module/domains/entities/counter_increment_entity.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'counter_controller_test.mocks.dart';

@GenerateMocks(<Type>[CounterImplUseCase])
void main() {
  final MockCounterImplUseCase mockCounterImplUseCase =
      MockCounterImplUseCase();
  final CounterImplController expectCounterImplController =
      CounterImplController(usecase: mockCounterImplUseCase);
  const CounterInitialState expectCounterInitialState = CounterInitialState();
  const CounterIncrementState expectCounterIncrementState =
      CounterIncrementState(status: CounterStatusState.success, summary: 1);
  const CounterIncrementResponseEntity expectCounterIncrementResponseEntity =
      CounterIncrementResponseEntity(summary: 1);

  group('CounterImplController Class', () {
    test('Should have CounterImplController Class', () {
      expect(CounterImplController, CounterImplController);
    });

    test('Should have mandatory properties', () {
      expect(expectCounterImplController.state, expectCounterInitialState);
    });

    test('Should have method increment', () {
      when(
        mockCounterImplUseCase.increment(
          requestIncrement: const CounterIncrementRequestEntity(
            summary: 0,
            numberOfIncrement: 1,
          ),
        ),
      ).thenReturn(expectCounterIncrementResponseEntity);

      expectCounterImplController.increment();
      expect(expectCounterImplController.state, expectCounterIncrementState);
    });
  });
}
