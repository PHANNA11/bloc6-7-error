import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counterNumber: 0)) {
    on<DecrementCounter>((event, emit) {
      // TODO: implement event handler
      if (state.counterNumber <= 0) {
        emit(CounterState(counterNumber: 0));
      } else {
        emit(CounterState(counterNumber: (state.counterNumber - 1)));
      }
    });
    on<IncrementCounter>((event, emit) {
      emit(CounterState(counterNumber: (state.counterNumber + 1)));
    });
  }
}
