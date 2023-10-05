//car_bloc.dart
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercedes_car_info/bloc/car/car_event.dart';
import 'package:mercedes_car_info/bloc/car/car_state.dart';
import 'package:mercedes_car_info/data/models/get_cars_by_market.dart';

import '../../repository/car_repository.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  //News repo instance
  final _carsRepo = CarRepository();

  CarBloc() : super(CarStateInitial()) {
    on<CarFetchDataEvent>(_fetchCarsByMarket);
  }

  FutureOr<void> _fetchCarsByMarket(CarEvent event, Emitter<CarState> emit) async {
    if(event is CarFetchDataEvent) {
      emit(CarStateLoading());
      await _carsRepo
          .getCarsByMarket(event.greetingText)
          .onError((error, stackTrace) => emit(CarStateError(error.toString())))
          .then((value) {
            // print(value);
        Iterable data = value;
        List<GetCarsByMarket> carDataX = List<GetCarsByMarket>.from(
            data.map((model)=> GetCarsByMarket.fromJson(model))
        );
        print(carDataX.first.brand?.name??"N/A");
        emit(CarStateLoaded(carDataX));
      });
    }
  }
}