// import 'package:equatable/equatable.dart';
// import 'package:get/get.dart';
//
// class CountNumber extends GetxController implements CountEvent {
//   int counter = 0;
//
//   @override
//   void increment() {
//     counter++;
//     update();
//   }
// }
//
// abstract class CountEvent {
//   const CountEvent();
//   void increment();
// }
//
// enum CountStatusState { initial, loading, success, failure }
//
// abstract class CountState extends Equatable {
//   const CountState();
//
//   @override
//   List<Object?> get props => <Object?>[];
// }
//
// class CountIncrementState extends CountState {
//   const CountIncrementState({
//     required CountStatusState status,
//     required TaskGetRequestBlocModel query,
//     ErrorBlocModel? error,
//     ExceptionBlocModel? exception,
//   })  : _status = status,
//         _query = query,
//         _data = data,
//         _error = error,
//         _exception = exception;
//
//   final CountStatusState _status;
//   final TaskGetRequestBlocModel _query;
//   final List<TaskGetResponseBlocModel>? _data;
//   final ErrorBlocModel? _error;
//   final ExceptionBlocModel? _exception;
//
//   CountStatusState get status => _status;
//
//   TaskGetRequestBlocModel get query => _query;
//
//   List<TaskGetResponseBlocModel>? get data => _data;
//
//   ErrorBlocModel? get error => _error;
//
//   ExceptionBlocModel? get exception => _exception;
//
//   @override
//   List<Object?> get props =>
//       <Object?>[_status, _data, _query, _error, _exception];
// }
//
