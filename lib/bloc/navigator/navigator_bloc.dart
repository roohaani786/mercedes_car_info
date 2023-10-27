// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class NavigatorBloc extends Bloc<Navigator, dynamic>{
//
//   final GlobalKey<NavigatorState> navigatorKey;
//   NavigatorBloc({required this.navigatorKey});
//
//   @override
//   dynamic get initialState => 0;
//
//   @override
//   Stream<dynamic> mapEventToState(NavigatorAction event) async* {
//     if(event is NavigatorActionPop){
//       navigatorKey.currentState.pop();
//
//     }else if(event is NavigateToHomeEvent){
//       navigatorKey.currentState.pushNamed('/home');
//
//     }
//   }
// }