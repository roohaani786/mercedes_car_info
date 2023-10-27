import 'package:flutter/material.dart';

// Horizontal Spacing
const Widget horizontalSpace_2 = SizedBox(width: 2.0);
const Widget horizontalSpace_4 = SizedBox(width: 4.0);
const Widget horizontalSpace_5 = SizedBox(width: 5.0);
const Widget horizontalSpace_6 = SizedBox(width: 6.0);
const Widget horizontalSpace_8 = SizedBox(width: 8.0);
const Widget horizontalSpace_10 = SizedBox(width: 10.0);
const Widget horizontalSpace_12 = SizedBox(width: 12.0);
const Widget horizontalSpace_14 = SizedBox(width: 14.0);
const Widget horizontalSpace_15 = SizedBox(width: 15.0);
const Widget horizontalSpace_16 = SizedBox(width: 16.0);
const Widget horizontalSpace_18 = SizedBox(width: 18.0);
const Widget horizontalSpace_20 = SizedBox(width: 20.0);
const Widget horizontalSpace_24 = SizedBox(width: 24.0);
const Widget horizontalSpace_32 = SizedBox(width: 32.0);
const Widget horizontalSpace_36 = SizedBox(width: 36.0);
const Widget horizontalSpace_34 = SizedBox(width: 34.0);
const Widget horizontalSpace_64 = SizedBox(width: 64.0);
const Widget horizontalSpace_46 = SizedBox(width: 46.0);
const Widget horizontalSpace_80 = SizedBox(width: 80.0);
const Widget horizontalSpace_100 = SizedBox(width: 100.0);
// Vertical Spacing
const Widget verticalSpace_2 = SizedBox(height: 2.0);
const Widget verticalSpace_4 = SizedBox(height: 4.0);
const Widget verticalSpace_6 = SizedBox(height: 6.0);
const Widget verticalSpace_7 = SizedBox(height: 7.0);
const Widget verticalSpace_8 = SizedBox(height: 8.0);
const Widget verticalSpace_10 = SizedBox(height: 10.0);
const Widget verticalSpace_12 = SizedBox(height: 12.0);
const Widget verticalSpace_13 = SizedBox(height: 13.0);
const Widget verticalSpace_15 = SizedBox(height: 15.0);
const Widget verticalSpace_16 = SizedBox(height: 16.0);
const Widget verticalSpace_18 = SizedBox(height: 18.0);
const Widget verticalSpace_20 = SizedBox(height: 20.0);
const Widget verticalSpace_22 = SizedBox(height: 22.0);
const Widget verticalSpace_23 = SizedBox(height: 23.0);
const Widget verticalSpace_24 = SizedBox(height: 24.0);
const Widget verticalSpace_25 = SizedBox(height: 25.0);
const Widget verticalSpace_26 = SizedBox(height: 26.0);
const Widget verticalSpace_28 = SizedBox(height: 28.0);
const Widget verticalSpace_29 = SizedBox(height: 29.0);
const Widget verticalSpace_30 = SizedBox(height: 30.0);
const Widget verticalSpace_34 = SizedBox(height: 34.0);
const Widget verticalSpace_35 = SizedBox(height: 35.0);
const Widget verticalSpace_32 = SizedBox(height: 32.0);
const Widget verticalSpace_33 = SizedBox(height: 33.0);
const Widget verticalSpace_36 = SizedBox(height: 36.0);
const Widget verticalSpace_40 = SizedBox(height: 40.0);
const Widget verticalSpace_44 = SizedBox(height: 44.0);
const Widget verticalSpace_50 = SizedBox(height: 50.0);
const Widget verticalSpace_55 = SizedBox(height: 55.0);
const Widget verticalSpace_60 = SizedBox(height: 60.0);
const Widget verticalSpace_64 = SizedBox(height: 64.0);
const Widget verticalSpace_70 = SizedBox(height: 70.0);
const Widget verticalSpace_80 = SizedBox(height: 80.0);
const Widget verticalSpace_82 = SizedBox(height: 82.0);
const Widget verticalSpace_90 = SizedBox(height: 90.0);
const Widget verticalSpace_100 = SizedBox(height: 100.0);
const Widget verticalSpace_120 = SizedBox(height: 120.0);
const Widget verticalSpace_180 = SizedBox(height: 180.0);

// Screen Size helpers
Widget headerPrimarySpacing(BuildContext context) =>  SizedBox(
  height: MediaQuery.of(context).size.height * 0.05,
);
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
    screenHeight(context) * percentage;
double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
    screenWidth(context) * percentage;
