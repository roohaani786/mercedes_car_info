//news_event.dart
import 'package:flutter/cupertino.dart';

@immutable
abstract class CarEvent {}

class CarFetchDataEvent extends CarEvent {
  final String modelID;
  CarFetchDataEvent(this.modelID);
}

class TapItemEvent extends CarEvent {
  final String modelID;
  TapItemEvent(this.modelID);
}

class CarFetchHomeDataEvent extends CarEvent {
  final String marketName;
  CarFetchHomeDataEvent(this.marketName);
}