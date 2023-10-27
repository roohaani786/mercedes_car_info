//car_bloc.dart
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mercedes_car_info/bloc/car/car_event.dart';
import 'package:mercedes_car_info/bloc/car/car_state.dart';
import 'package:mercedes_car_info/data/models/get_cars_by_market.dart';
import 'package:mercedes_car_info/data/models/initial_config.dart';
import 'package:mercedes_car_info/data/models/vehicle_images.dart';

import '../../repository/car_repository.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  //News repo instance
  final _carsRepo = CarRepository();

  CarBloc() : super(CarStateInitial()) {
    on<CarFetchDataEvent>(_fetchCarsByMarket);
    on<CarFetchHomeDataEvent>(_fetchCarsByMarket);
    on<TapItemEvent>(_fetchCarsByMarket);
  }

  FutureOr<void> _fetchCarsByMarket(CarEvent event, Emitter<CarState> emit) async {
    List<GetCarsByMarket>? carDataX;
    InitialConfigModel? carInitialConfigData;
    VehicleImagesModel? vehicleImageX;

    if(event is CarFetchHomeDataEvent) {

      emit(CarStateLoading());
      await _carsRepo
          .getCarsByMarket(event.marketName)
          .onError((error, stackTrace) => emit(CarStateError(error.toString())))
          .then((value) {
        print(value);
       if(value != null){
         Iterable data = value;
         carDataX = List<GetCarsByMarket>.from(
             data.map((model)=> GetCarsByMarket.fromJson(model))
         );
         print(carDataX?.first.brand?.name??"N/A");
         emit(CarStateLoaded(carData: carDataX));
       }
       else{
         emit(CarStateError("No Data Found"));
       }
      });
    }

    if(event is CarFetchDataEvent) {
      emit(CarStateLoading());
      await _carsRepo
          .getInitialConfig(event.modelID)
          .onError((error, stackTrace) => emit(CarStateError(error.toString())))
          .then((value) {
        // print(value);
        carInitialConfigData = InitialConfigModel.fromJson(value);
        print(carInitialConfigData?.configurationId??"N/A");
      });
      await _carsRepo
            .getCarByConfig(carInitialConfigData?.modelId??"N/A",carInitialConfigData?.configurationId??"N/A")
            .onError((error, stackTrace) =>
            emit(CarStateError(error.toString())))
            .then((value) {
          // print(value);
        carInitialConfigData = InitialConfigModel.fromJson(value);
          print(carInitialConfigData?.modelId ?? "N/A");
          emit(CarStateLoaded(
              carData: carDataX,
              carImages: vehicleImageX,
              carInitialConfigData: carInitialConfigData));
        });
      }
    if(event is TapItemEvent){
      emit(TappedOnItem(event.modelID));
    }
  }

}