//news_state.dart
import 'package:flutter/cupertino.dart';
import 'package:mercedes_car_info/data/models/get_cars_by_market.dart';
import 'package:mercedes_car_info/data/models/vehicle_images.dart';

import '../../data/models/initial_config.dart';

@immutable
abstract class CarState {}
//This is initial state of bloc
class CarStateInitial extends CarState {}
//This is the loading state of bloc
class CarStateLoading extends CarState {}
//This is the success state of bloc
class CarStateLoaded extends CarState {
  late final List<GetCarsByMarket>? carData;
  late final InitialConfigModel? carInitialConfigData;
  late final VehicleImagesModel? carImages;
  CarStateLoaded({this.carData, this.carImages,this.carInitialConfigData});
}
//This is the error state of bloc
class CarStateError extends CarState {
  late final String errorMessage;
  CarStateError(this.errorMessage);
}

class TappedOnItem extends CarState {
  late final String modelId;
  TappedOnItem(this.modelId);
}