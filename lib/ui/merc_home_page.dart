import 'package:flutter/material.dart';
import 'package:mercedes_car_info/bloc/car/car_state.dart';
import 'package:mercedes_car_info/res/colors/color_constants.dart';
import 'package:mercedes_car_info/res/helpers/modified_rich_text.dart';
import 'package:mercedes_car_info/res/helpers/modified_text.dart';
import 'package:mercedes_car_info/res/helpers/string_util.dart';
import 'package:mercedes_car_info/res/helpers/ui_helpers.dart';
import 'package:mercedes_car_info/res/style/text_styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mercedes_car_info/bloc/car/car_bloc.dart';
import 'package:mercedes_car_info/ui/merc_car_detail.dart';

import '../bloc/car/car_event.dart';

class MercedesHomeScreen extends StatefulWidget {
  const MercedesHomeScreen({super.key, required this.title});

  final String title;

  @override
  State<MercedesHomeScreen> createState() => _MercedesHomeScreenState();
}

class _MercedesHomeScreenState extends State<MercedesHomeScreen> {

  @override
  void initState() {
    context.read<CarBloc>().add(CarFetchHomeDataEvent("pl_PL"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // height: MediaQuery.of(context).size.height/2,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: BlocConsumer<CarBloc,CarState>(
              listener: (BuildContext context, CarState state) {
                if(state is TappedOnItem){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                    return MercedesCarDetailScreen(modelId: state.modelId??"N/A");
                  }));
                }
              },
              builder: (context, state) {
                if (state is CarStateInitial) {
                  return  Center(
                    child: InkWell(
                      onTap: () async {
                        context.read<CarBloc>().add(CarFetchHomeDataEvent("pl_PL"));
                      },
                      child: const Text("Get Cars Data"),
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
                    return Center(
                      child: Container(
                        color: ColorConstants.secondaryBackgroundColor,
                        child: ModifiedRichText(
                          label1: "An Error occurred",
                          label2: state.errorMessage,
                        ),
                      ),
                    );
                }
                else if( state is CarStateLoaded){
                  return Center(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.carData?.length,
                          itemBuilder: (context,index)=>
                              InkWell(
                                onTap: (){
                                  print(state.carData?[index].modelId??"N/A");
                                  context.read<CarBloc>().add(TapItemEvent(state.carData?[index].modelId??"N/A"));
                                },
                                child: Container(
                                 padding: const EdgeInsets.all(16.0),
                                 margin: const EdgeInsets.all(16.0),
                                  decoration: BoxDecoration(
                                    gradient:  LinearGradient(
                                        colors: [
                                          Colors.grey.shade700,
                                          Colors.grey.shade900,
                                        ]),
                                    borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ModifiedText(
                                          label: state.carData?[index].name??"N/A",
                                          style: textStyles.xlTextSemiBoldStyle.copyWith(
                                            color: ColorConstants.white,
                                          ),
                                      ),
                                      verticalSpace_16,
                                      ModifiedText(
                                          label: state.carData?[index].vehicleClass?.className??"N/A",
                                        style: textStyles.mdTextMediumStyle.copyWith(
                                          color: ColorConstants.white,
                                        ),
                                      ),
                                      verticalSpace_8,
                                      ModifiedText(
                                          label: state.carData?[index].vehicleBody?.bodyName??"N/A",
                                        style: textStyles.mdTextMediumStyle.copyWith(
                                          color: ColorConstants.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                      )
                  );
                }
                return const SizedBox();
              }
          ),
        ),
      ),
    );
  }
}