import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<DecrementCounter>((event, emit) {
      // TODO: implement event handler
      emit(CounterState(counterNumber: (state.counterNumber - 1)));
    });
    on<IncrementCounter>((event, emit) {
      emit(CounterState(counterNumber: (state.counterNumber + 1)));
    });
  }
}
