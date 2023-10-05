//news_event.dart
import 'package:flutter/cupertino.dart';

@immutable
abstract class CarEvent {}

class CarFetchDataEvent extends CarEvent {
  final String greetingText;
  CarFetchDataEvent(this.greetingText);
}