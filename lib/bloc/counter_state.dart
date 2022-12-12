part of 'counter_bloc.dart';

class CounterState extends Equatable {
  CounterState({required this.counterNumber});
  int counterNumber;
  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {
  CounterInitial() : super(counterNumber: 0);
}
