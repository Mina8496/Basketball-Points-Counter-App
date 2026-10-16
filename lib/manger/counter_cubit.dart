import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:w_shopapp_01/manger/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoint = 0;

  int teamBPoint = 0;

  void teamIncrement({required String team, required int buttomNumber}) {
    if (team == 'A') {
      teamAPoint += buttomNumber;
      emit(CounterAIncrementState());
    } else if (team == 'B') {
      teamBPoint += buttomNumber;
      emit(CounterBIncrementState());
    }
  }
}
