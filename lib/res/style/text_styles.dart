import 'package:flutter/material.dart';

final TextStylesConstant textStyles = TextStylesConstant();

@immutable
class TextStylesConstant {
  static const TextStyle style = TextStyle(fontFamily: 'Inter', height: 1.2,);
  late final TextStyle h8TextStyle =
  copy(style, sizePx: 10, weight: FontWeight.w700);
  late final TextStyle h7TextStyle =
  copy(style, sizePx: 12, weight: FontWeight.w700);
  late final TextStyle h6TextStyle =
  copy(style, sizePx: 20, weight: FontWeight.w700);
  late final TextStyle h5TextStyle =
  copy(style, sizePx: 24, weight: FontWeight.w700);
  late final TextStyle h4TextStyle =
  copy(style, sizePx: 36, weight: FontWeight.w700);
  late final TextStyle h3TextStyle =
  copy(style, sizePx: 44, weight: FontWeight.w700);
  late final TextStyle h2TextStyle =
  copy(style, sizePx: 52, weight: FontWeight.w700);
  late final TextStyle h1TextStyle =
  copy(style, sizePx: 62, weight: FontWeight.w700);

  late final TextStyle xlTextRegularStyle =
  copy(style, sizePx: 18, weight: FontWeight.w400);
  late final TextStyle lgTextRegularStyle =
  copy(style, sizePx: 16, weight: FontWeight.w400);
  late final TextStyle mdTextRegularStyle =
  copy(style, sizePx: 14, weight: FontWeight.w400);
  late final TextStyle smTextRegularStyle =
  copy(style, sizePx: 12, weight: FontWeight.w400);
  late final TextStyle xsTextRegularStyle =
  copy(style, sizePx: 11, weight: FontWeight.w400);
  late final TextStyle xxsTextRegularStyle =
  copy(style, sizePx: 10, weight: FontWeight.w400);

  late final TextStyle xlTextMediumStyle =
  copy(style, sizePx: 18, weight: FontWeight.w500);
  late final TextStyle lgTextMediumStyle =
  copy(style, sizePx: 16, weight: FontWeight.w500);
  late final TextStyle mdTextMediumStyle =
  copy(style, sizePx: 14, weight: FontWeight.w500);
  late final TextStyle smTextMediumStyle =
  copy(style, sizePx: 12, weight: FontWeight.w500);
  late final TextStyle xsTextMediumStyle =
  copy(style, sizePx: 11, weight: FontWeight.w500);
  late final TextStyle xxsTextMediumStyle =
  copy(style, sizePx: 10, weight: FontWeight.w500);


  late final TextStyle xxxlTextSemiBoldStyle =
  copy(style, sizePx: 36, weight: FontWeight.w600);
  late final TextStyle xxlTwentySixTextSemiBoldStyle =
  copy(style, sizePx: 26, weight: FontWeight.w600);
  late final TextStyle xxlTextSemiBoldStyle =
  copy(style, sizePx: 20, weight: FontWeight.w600);
  late final TextStyle xlTextSemiBoldStyle =
  copy(style, sizePx: 18, weight: FontWeight.w600);
  late final TextStyle lgTextSemiBoldStyle =
  copy(style, sizePx: 16, weight: FontWeight.w600);
  late final TextStyle mdTextSemiBoldStyle =
  copy(style, sizePx: 14, weight: FontWeight.w600);
  late final TextStyle smTextSemiBoldStyle =
  copy(style, sizePx: 12, weight: FontWeight.w600);
  late final TextStyle xsTextSemiBoldStyle =
  copy(style, sizePx: 11, weight: FontWeight.w600);
  late final TextStyle xxsTextSemiBoldStyle =
  copy(style, sizePx: 10, weight: FontWeight.w600);

  late final TextStyle xlTextBoldStyle =
  copy(style, sizePx: 18, weight: FontWeight.w700);
  late final TextStyle lgTextBoldStyle =
  copy(style, sizePx: 16, weight: FontWeight.w700);
  late final TextStyle mdTextBoldStyle =
  copy(style, sizePx: 14, weight: FontWeight.w700);
  late final TextStyle smTextBoldStyle =
  copy(style, sizePx: 12, weight: FontWeight.w700);
  late final TextStyle xsTextBoldStyle =
  copy(style, sizePx: 11, weight: FontWeight.w700);
  late final TextStyle xxsTextBoldStyle =
  copy(style, sizePx: 10, weight: FontWeight.w700);

  late final TextStyle extraBoldStyle =
  copy(style, sizePx: 40, weight: FontWeight.w800);

  late final TextStyle extraSemiBoldStyle =
  copy(style, sizePx: 30, weight: FontWeight.w600);

  TextStyle copy(TextStyle style,
      {required double sizePx,
        double? heightPx,
        double? spacingPc,
        FontWeight? weight}) {
    return style.copyWith(
        fontSize: sizePx,
        height: heightPx != null ? (heightPx / sizePx) : style.height,
        letterSpacing:
        spacingPc != null ? sizePx * spacingPc * 0.01 : style.letterSpacing,
        fontWeight: weight);
  }
}
