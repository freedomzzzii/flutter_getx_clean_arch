import '../entities/counter_increment_entity.dart';

abstract class CounterUseCase {
  CounterIncrementResponseEntity increment(
      {required CounterIncrementRequestEntity requestIncrement});
}
