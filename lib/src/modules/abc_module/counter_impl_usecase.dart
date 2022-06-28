import 'domains/entities/counter_increment_entity.dart';
import 'domains/usecases/counter_usecase.dart';

class CounterImplUseCase implements CounterUseCase {
  @override
  CounterIncrementResponseEntity increment(
      {required CounterIncrementRequestEntity requestIncrement}) {
    return CounterIncrementResponseEntity(summary: requestIncrement.numberOfIncrement + requestIncrement.summary);
  }
}
