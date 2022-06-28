import '../../../domains/entities/counter_increment_entity.dart';

class CounterRequestControllerModel extends CounterIncrementRequestEntity {
  const CounterRequestControllerModel({
    required int numberOfIncrement,
    required int summary
  }) : super(
    numberOfIncrement: numberOfIncrement,
    summary: summary,
  );
}

class CounterResponseControllerModel extends CounterIncrementResponseEntity {
  const CounterResponseControllerModel({
    required int summary,
  }) : super(
    summary: summary,
  );
}
