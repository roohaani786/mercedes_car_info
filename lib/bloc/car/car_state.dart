//news_state.dart
import 'package:flutter/cupertino.dart';
import 'package:mercedes_car_info/data/models/get_cars_by_market.dart';

@immutable
abstract class CarState {}
//This is initial state of bloc
class CarStateInitial extends CarState {}
//This is the loading state of bloc
class CarStateLoading extends CarState {}
//This is the success state of bloc
class CarStateLoaded extends CarState {
  late final List<GetCarsByMarket> carData;
  CarStateLoaded(this.carData);
}
//This is the error state of bloc
class CarStateError extends CarState {
  late final String errorMessage;
  CarStateError(this.errorMessage);
}