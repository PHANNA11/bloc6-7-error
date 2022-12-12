part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  CounterEvent();

  @override
  List<Object> get props => [];
}

class DecrementCounter extends CounterEvent {}

class IncrementCounter extends CounterEvent {}
