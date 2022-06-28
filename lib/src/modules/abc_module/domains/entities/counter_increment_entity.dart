import 'package:equatable/equatable.dart';

class CounterIncrementRequestEntity extends Equatable {
  const CounterIncrementRequestEntity({
    required int numberOfIncrement,
    required int summary,
  })  : _numberOfIncrement = numberOfIncrement, _summary = summary;

  final int _numberOfIncrement;
  final int _summary;

  int get numberOfIncrement => _numberOfIncrement;
  int get summary => _summary;

  @override
  List<Object?> get props => <Object?>[_numberOfIncrement, _summary];
}

class CounterIncrementResponseEntity extends Equatable {
  const CounterIncrementResponseEntity({
    required int summary,
  })  : _summary = summary;

  final int _summary;

  int get summary => _summary;

  @override
  List<Object?> get props => <Object?>[_summary];
}
