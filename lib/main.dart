import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercedes_car_info/bloc/car/car_bloc.dart';
import 'package:mercedes_car_info/ui/merc_car_detail.dart';

import 'ui/merc_home_page.dart';


final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<CarBloc>(
            create: (context) =>
                CarBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Labrada'),
        routes: {
          '/': (context) => const MyApp(),
          // '/pageB': (context) => PageB(),
        },
        initialRoute: '/',
      ),
    ),
  );
}

class MyApp extends StatelessWidget {

   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CarBloc(),
      child: const MercedesHomeScreen(title: '',),
    );
  }
}
