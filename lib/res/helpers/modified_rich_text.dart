import 'package:flutter/material.dart';

import '../colors/color_constants.dart';
import '../style/text_styles.dart';

class ModifiedRichText extends StatelessWidget {

  const ModifiedRichText({super.key, this.label1,this.labelStyle1,this.label2,this.labelStyle2,this.label3,this.labelStyle3});

  final String? label1;
  final TextStyle? labelStyle1;
  final String? label2;
  final TextStyle? labelStyle2;

  final String? label3;
  final TextStyle? labelStyle3;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          children: [
            TextSpan(
                text: label1 ?? "",
                style: labelStyle1 ??
                    textStyles.lgTextMediumStyle),
            TextSpan(text: label2 ?? "",
                style: labelStyle2 ?? textStyles.lgTextMediumStyle.copyWith(
                  color: ColorConstants.primaryColor,
                )),
            TextSpan(text: label3 ?? "",
                style: labelStyle3 ?? textStyles.lgTextMediumStyle.copyWith(
                  color: ColorConstants.primaryColor,
                )),
          ]
      ),
    );
  }
}


