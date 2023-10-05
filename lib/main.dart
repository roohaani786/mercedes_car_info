import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercedes_car_info/bloc/car/car_bloc.dart';
import 'package:mercedes_car_info/bloc/car/car_state.dart';

import 'bloc/car/car_event.dart';

void main() {
  runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CarBloc(),
      child: const MyHomePage(title: "hello"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: BlocBuilder<CarBloc,CarState>(
          builder: (context, state) {
            if (state is CarStateInitial) {
              return  Center(
                child: SizedBox(
                  child: InkWell(
                    onTap: () async {
                      context.read<CarBloc>().add(CarFetchDataEvent("Hello Cars"));
                    },
                    child: const Text("Get Cars Data"),
                  ),
                ),
              );
            }
            else if (state is CarStateLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blueGrey,
                  ),
                );
            }
            else if(state is CarStateError){

            }
            else if( state is CarStateLoaded){
              return Center(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.carData.length,
                      itemBuilder: (context,index)=>
                          Container(
                           padding: const EdgeInsets.all(8.0),
                           margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Column(
                              children: [
                                Text(state.carData[index].brand?.name??"N/A"),
                                Text(state.carData[index].priceInformation?.price.toString()??"N/A"),
                                Text(state.carData[index].vehicleClass?.className??"N/A"),
                                Text(state.carData[index].modelYear??"N/A"),
                              ],
                            ),
                          )
                  )
              );
            }
            return const SizedBox();
          }
      ),
    );
  }
}
