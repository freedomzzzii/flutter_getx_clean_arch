import 'package:equatable/equatable.dart';

import '../../models/error_controller_model.dart';
import '../../models/exception_controller_model.dart';

enum CounterStatusState { initial, loading, success, failure }

abstract class CounterState extends Equatable {
  const CounterState({
    required CounterStatusState status,
    int summary = 0,
    ErrorControllerModel? error,
    ExceptionControllerModel? exception,
  })  : _status = status,
        _summary = summary,
        _error = error,
        _exception = exception;

  final CounterStatusState _status;
  final int _summary;
  final ErrorControllerModel? _error;
  final ExceptionControllerModel? _exception;

  CounterStatusState get status => _status;

  int get summary => _summary;

  ErrorControllerModel? get error => _error;

  ExceptionControllerModel? get exception => _exception;

  @override
  List<Object?> get props => <Object?>[];
}

class CounterInitialState extends CounterState {
  const CounterInitialState() : super(status: CounterStatusState.initial);

  @override
  List<Object> get props => <Object>[_status];
}

class CounterIncrementState extends CounterState {
  const CounterIncrementState({
    required CounterStatusState status,
    required int summary,
    ErrorControllerModel? error,
    ExceptionControllerModel? exception,
  }) : super(
            status: status,
            summary: summary,
            error: error,
            exception: exception);

  @override
  List<Object?> get props => <Object?>[status, summary, error, exception];
}
