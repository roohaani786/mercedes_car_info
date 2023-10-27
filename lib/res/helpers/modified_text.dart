import 'package:flutter/material.dart';

import '../style/text_styles.dart';

class ModifiedText extends StatelessWidget {

  const ModifiedText({super.key, this.label,this.style,this.scaleFactor,this.maxLines,this.align});

  final String? label;
  final TextStyle? style;
  final double? scaleFactor;
  final int? maxLines;
  final TextAlign? align;


  @override
  Widget build(BuildContext context) {
    return Text(label??"N/A",
      textScaleFactor: scaleFactor?? 1.0,
      textAlign: align ?? TextAlign.start,
      maxLines: maxLines?? 2,
      style: style?? textStyles.mdTextBoldStyle,
    );
  }
}


