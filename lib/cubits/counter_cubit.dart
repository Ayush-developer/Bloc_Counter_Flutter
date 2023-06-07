import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/material.dart';
import 'counter_state.dart';



class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterState(0));

  void increment() => emit(CounterState(state.CounterValue+1));
  void decrement() => emit(CounterState(state.CounterValue-1));
}