import 'package:flutter/material.dart';
import 'package:mercedes_car_info/bloc/car/car_state.dart';
import 'package:mercedes_car_info/res/colors/color_constants.dart';
import 'package:mercedes_car_info/res/helpers/modified_text.dart';
import 'package:mercedes_car_info/res/helpers/string_util.dart';
import 'package:mercedes_car_info/res/helpers/ui_helpers.dart';
import 'package:mercedes_car_info/res/style/text_styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mercedes_car_info/bloc/car/car_bloc.dart';

import '../bloc/car/car_event.dart';

class MercedesCarDetailScreen extends StatefulWidget {
  const MercedesCarDetailScreen({super.key,this.modelId});

  final String? modelId;

  @override
  State<MercedesCarDetailScreen> createState() => _MercedesCarDetailScreenState();
}

class _MercedesCarDetailScreenState extends State<MercedesCarDetailScreen> {

  @override
  void initState() {
    print("=========");
    print("MODEL ID");
    print(widget.modelId);
    print("=========");
    context.read<CarBloc>().add(CarFetchDataEvent(widget.modelId??"N/A"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height/2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg2.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: BlocBuilder<CarBloc,CarState>(
                builder: (context, state) {
                  if (state is CarStateInitial) {
                    return  Center(
                      child: InkWell(
                        onTap: () async {
                          context.read<CarBloc>().add(CarFetchDataEvent("Hello Cars"));
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

                  }
                  else if( state is CarStateLoaded){
                    return Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          const SizedBox(height: 20.0,),
                          ModifiedText(label: state.carData?.length.toString()),
                          for(int i=0;i< (state.carData?.length??0);i++)
                            // (state.carData?[i].modelId?.contains("1770511") == true)?
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: ModifiedText(
                                      label: state.carData?[i].brand?.name??"N/A",
                                      style: textStyles.h4TextStyle.copyWith(
                                          color: ColorConstants.black
                                      )),
                                ),
                                const SizedBox(height: 16.0,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: ModifiedText(
                                      label: "${state.carData?[i].name ?? "N/A"} : ${state.carData?[i].vehicleClass?.className??"N/A"}",
                                      style: textStyles.h7TextStyle.copyWith(
                                          color: ColorConstants.black
                                      )),
                                ),
                                SizedBox(
                                  height: 150.0,
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.network(state.carImages?.vehicle?.eXT020?.url??"N/A",
                                    fit: BoxFit.cover,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                                // Image.network(state.carImages?.vehicle?.eXT020?.url??"N/A"),
                                const SizedBox(height: 20.0,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(12.0),
                                        margin: const EdgeInsets.all(16.0),
                                        decoration: BoxDecoration(
                                          // color: Colors.blue,
                                            borderRadius: BorderRadius.circular(15.0),
                                            gradient: const LinearGradient(colors: [
                                              Colors.deepPurpleAccent,
                                              Colors.deepPurple,
                                            ])
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/icons/steering_position.svg",
                                                  color: ColorConstants.white,),
                                                horizontalSpace_20,
                                                Text(" ${state.carData?[i].steeringPosition.toString().toNameTitleCase??"N/A"}",
                                                  style: textStyles.mdTextMediumStyle.copyWith(
                                                    color: ColorConstants.primaryColorLight,
                                                  ),),
                                              ],
                                            ),
                                            verticalSpace_20,

                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/icons/facelift.svg",
                                                  color: ColorConstants.white,),
                                                horizontalSpace_20,
                                                Text(" ${state.carData?[i].facelift.toString().toNameTitleCase??"N/A"}",
                                                  style: textStyles.mdTextMediumStyle.copyWith(
                                                      color: ColorConstants.primaryColorLight
                                                  ),
                                                ),
                                              ],
                                            ),
                                            verticalSpace_20,
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/icons/terrain.svg",
                                                  color: ColorConstants.white,),
                                                horizontalSpace_20,
                                                Text(" ${state.carData?[i].allTerrain.toString().toNameTitleCase??"N/A"}",
                                                  style: textStyles.mdTextMediumStyle.copyWith(
                                                      color: ColorConstants.primaryColorLight
                                                  ),
                                                ),
                                              ],
                                            ),
                                            verticalSpace_20,
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/icons/money.svg",
                                                  color: ColorConstants.white,),
                                                horizontalSpace_20,
                                                ModifiedText(
                                                  label: " ${state.carData?[i].priceInformation?.currency??"N/A"}",
                                                  maxLines: 2,
                                                  style: textStyles.mdTextMediumStyle.copyWith(
                                                      color: ColorConstants.primaryColorLight
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    horizontalSpace_16,
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(12.0),
                                            margin: const EdgeInsets.all(16.0),
                                            decoration: BoxDecoration(
                                              // color: Colors.blue,
                                                borderRadius: BorderRadius.circular(15.0),
                                                gradient: const LinearGradient(colors: [
                                                  Colors.blue,
                                                  Colors.blueAccent,
                                                ])
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      height: 30.0,
                                                      width: 30.0,
                                                      child: SvgPicture.asset(
                                                        "assets/icons/vehicle_body.svg",
                                                        color: ColorConstants.white,),
                                                    ),
                                                    horizontalSpace_20,
                                                    Expanded(
                                                      child: ModifiedText(label: "${
                                                          state.carInitialConfigData
                                                              ?.technicalInformation
                                                              ?.luggageSpace
                                                              ?.luggageSpaceFrontSeat
                                                              ?.value ?? "N/A"} ${state.carInitialConfigData?.technicalInformation?.luggageSpace?.luggageSpaceFrontSeat?.unit.toNameTitleCase??"N/A"}",
                                                        maxLines: 4,
                                                        style: textStyles.mdTextMediumStyle.copyWith(
                                                          color: ColorConstants.primaryColorLight,
                                                        ),),
                                                    ),
                                                  ],
                                                ),
                                                verticalSpace_20,
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      height: 30.0,
                                                      width: 30.0,
                                                      child: SvgPicture.asset(
                                                        "assets/icons/acceleration.svg",
                                                        color: ColorConstants.white,),
                                                    ),
                                                    horizontalSpace_20,
                                                    Expanded(
                                                      child: Text(" ${state.carInitialConfigData?.technicalInformation?.acceleration?.value.toString()??"N/A"} "
                                                          "${state.carInitialConfigData?.technicalInformation?.acceleration?.unit??"N/A"}",
                                                        style: textStyles.mdTextMediumStyle.copyWith(
                                                            color: ColorConstants.primaryColorLight
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          horizontalSpace_16,
                                          Container(
                                            padding: const EdgeInsets.all(12.0),
                                            margin: const EdgeInsets.all(16.0),
                                            decoration: BoxDecoration(
                                              // color: Colors.blue,
                                                borderRadius: BorderRadius.circular(15.0),
                                                gradient: const LinearGradient(colors: [
                                                  Colors.purple,
                                                  Colors.purpleAccent,
                                                ])
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      height: 30.0,
                                                      width: 30.0,
                                                      child: SvgPicture.asset(
                                                        "assets/icons/speed_max.svg",
                                                        color: ColorConstants.white,),
                                                    ),
                                                    horizontalSpace_20,
                                                    Expanded(
                                                      child: ModifiedText(label:"${
                                                          state.carInitialConfigData
                                                              ?.technicalInformation
                                                              ?.engine
                                                              ?.engineSpeedMax
                                                              ?.value ?? "N/A"} (${
                                                          state.carInitialConfigData
                                                              ?.technicalInformation
                                                              ?.engine
                                                              ?.engineSpeedMax
                                                              ?.unit.toNameTitleCase??"N/A"})",
                                                        maxLines: 4,
                                                        style: textStyles.xsTextBoldStyle.copyWith(
                                                          color: ColorConstants.primaryColorLight,
                                                        ),),
                                                    ),
                                                  ],
                                                ),
                                                verticalSpace_20,
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      height: 30.0,
                                                      width: 30.0,
                                                      child: SvgPicture.asset(
                                                        "assets/icons/emission.svg",
                                                        color: ColorConstants.white,),
                                                    ),
                                                    horizontalSpace_20,
                                                    Expanded(
                                                      child: Text("${state.carInitialConfigData?.technicalInformation?.engine?.emissionStandard.toString()??"N/A"} "
                                                          "${state.carInitialConfigData?.technicalInformation?.acceleration?.unit??"N/A"}",
                                                        style: textStyles.mdTextMediumStyle.copyWith(
                                                            color: ColorConstants.primaryColorLight
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],),

                                verticalSpace_16,
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(state.carImages?.vehicle?.iNT1?.url??"N/A",
                                    fit: BoxFit.cover,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                                // Container(
                                //   padding: const EdgeInsets.all(12.0),
                                //   margin: const EdgeInsets.all(16.0),
                                //   decoration: BoxDecoration(
                                //     // color: Colors.blue,
                                //       borderRadius: BorderRadius.circular(15.0),
                                //       gradient: LinearGradient(colors: [
                                //         Colors.blueGrey,
                                //         Colors.lightBlue
                                //       ])
                                //   ),
                                //   child: Column(
                                //     crossAxisAlignment: CrossAxisAlignment.start,
                                //     children: [
                                //       Row(
                                //         children: [
                                //           SizedBox(
                                //             height: 30.0,
                                //             width: 30.0,
                                //             child: SvgPicture.asset(
                                //               "assets/icons/engine_cylinders.svg",
                                //               color: ColorConstants.white,),
                                //           ),
                                //           horizontalSpace_20,
                                //           Expanded(
                                //             child: ModifiedText(label: "${state.carInitialConfigData
                                //                 ?.technicalInformation
                                //                 ?.engine
                                //                 ?.cylinder
                                //                 .toNameTitleCase ??
                                //                 "N/A"
                                //             } Cylinders",
                                //               maxLines: 4,
                                //               style: textStyles.mdTextMediumStyle.copyWith(
                                //                 color: ColorConstants.primaryColorLight,
                                //               ),),
                                //           ),
                                //         ],
                                //       ),
                                //       verticalSpace_20,
                                //       Row(
                                //         children: [
                                //           SizedBox(
                                //             height: 30.0,
                                //             width: 30.0,
                                //             child: SvgPicture.asset(
                                //               "assets/icons/acceleration.svg",
                                //               color: ColorConstants.white,),
                                //           ),
                                //           horizontalSpace_20,
                                //           Expanded(
                                //             child: Text(" ${state.carInitialConfigData?.technicalInformation?.acceleration?.value.toString()??"N/A"} "
                                //                 "${state.carInitialConfigData?.technicalInformation?.acceleration?.unit??"N/A"} Acceleration",
                                //               style: textStyles.mdTextMediumStyle.copyWith(
                                //                   color: ColorConstants.primaryColorLight
                                //               ),
                                //             ),
                                //           ),
                                //         ],
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                // verticalSpace_16,
                              ],
                            )
                            //     :
                            // const SizedBox()
                          ,
                          ModifiedText(label: ";abel",)
                          // Text(state.carImages?.vehicle?.eXT020?.url??"N/A"),

                          // Image.network(state.carImages?.vehicle?.iNT1?.url??"N/A"),

                        ],
                      ),
                    );
                    // return Center(
                    //     child: ListView.builder(
                    //       shrinkWrap: true,
                    //       itemCount: state.carData?.length,
                    //         itemBuilder: (context,index)=>
                    //             InkWell(
                    //               onTap: (){
                    //
                    //               },
                    //               child: Container(
                    //                padding: const EdgeInsets.all(8.0),
                    //                margin: const EdgeInsets.all(8.0),
                    //                 decoration: BoxDecoration(
                    //                   color: Colors.cyan,
                    //                   borderRadius: BorderRadius.circular(10.0)
                    //                 ),
                    //                 child: Column(
                    //                   children: [
                    //                     Text(state.carData?[index].brand?.name??"N/A"),
                    //                     Text(state.carData?[index].priceInformation?.price.toString()??"N/A"),
                    //                     Text(state.carData?[index].vehicleClass?.className??"N/A"),
                    //                     Text(state.carData?[index].modelYear??"N/A"),
                    //                     Text(state.carData?[index].vehicleBody?.bodyName??"N/A"),
                    //                   ],
                    //                 ),
                    //               ),
                    //             )
                    //     )
                    // );
                  }
                  return const SizedBox();
                }
            ),
          ),
        ),
      ),
    );
  }
}