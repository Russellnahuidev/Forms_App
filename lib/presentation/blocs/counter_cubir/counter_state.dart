part of 'counter_cubit.dart';

class CounterState {
  final int counter;
  final int transactionCounter;

  CounterState({this.counter = 0, this.transactionCounter = 0});

  copyWith({int? counter, int? transactionCounter}) => CounterState(
    counter: counter ?? this.counter,
    transactionCounter: transactionCounter ?? this.transactionCounter,
  );
}
