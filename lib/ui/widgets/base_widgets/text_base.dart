import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/app/index.dart';
import '../../../core/theme/index.dart';

class TextBase extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight weight;
  final TextOverflow? overflow;
  final TextAlign? align;
  final FontStyle? fontStyle;
  final TextStyle? textStyle;
  final double? height;
  final int maxline;

  const TextBase({
    Key? key,
    this.overflow,
    required this.fontSize,
    required this.color,
    required this.weight,
    required this.text,
    this.align,
    this.fontStyle,
    this.height,
    this.maxline = 100,
    this.textStyle,
  }) : super(key: key);

  const TextBase.colorWhite(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_14,
      Color color = ThemeColors.primaryTextColorWhite,
      FontWeight weight = FontWeight.w400,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          height: height,
          textStyle: textStyle,
          maxline: maxline,
        );
  const TextBase.colorWhiteMedium(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_14,
      Color color = ThemeColors.primaryTextColorWhite,
      FontWeight weight = FontWeight.w500,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          height: height,
          textStyle: textStyle,
          maxline: maxline,
        );

  const TextBase.colorWhiteSemiBold(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_14,
      Color color = ThemeColors.primaryTextColorWhite,
      FontWeight weight = FontWeight.w600,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          textStyle: textStyle,
          height: height,
          maxline: maxline,
        );

  const TextBase.colorWhiteBold(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_14,
      Color color = ThemeColors.primaryTextColorWhite,
      FontWeight weight = FontWeight.w700,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          textStyle: textStyle,
          height: height,
          maxline: maxline,
        );

  const TextBase.colorWhiteExtraBold(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_14,
      Color color = ThemeColors.primaryTextColorWhite,
      FontWeight weight = FontWeight.w800,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          textStyle: textStyle,
          height: height,
          maxline: maxline,
        );

  const TextBase.colorBlack(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_14,
      Color color = ThemeColors.primaryTextColorBlack,
      FontWeight weight = FontWeight.w400,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          textStyle: textStyle,
          height: height,
          maxline: maxline,
        );

  const TextBase.colorBlackMedium(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_14,
      Color color = ThemeColors.primaryTextColorBlack,
      FontWeight weight = FontWeight.w500,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          textStyle: textStyle,
          height: height,
          maxline: maxline,
        );

  const TextBase.colorBlackSemiBold(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_14,
      Color color = ThemeColors.primaryTextColorBlack,
      FontWeight weight = FontWeight.w600,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          textStyle: textStyle,
          height: height,
          maxline: maxline,
        );

  const TextBase.colorBlackBold(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_14,
      Color color = ThemeColors.primaryTextColorBlack,
      FontWeight weight = FontWeight.w700,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          textStyle: textStyle,
          height: height,
          maxline: maxline,
        );

  const TextBase.colorBlackExtraBold(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_14,
      Color color = ThemeColors.primaryTextColorBlack,
      FontWeight weight = FontWeight.w800,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          textStyle: textStyle,
          height: height,
          maxline: maxline,
        );

  const TextBase.colorOther(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_14,
      required Color color,
      FontWeight weight = FontWeight.w400,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          textStyle: textStyle,
          height: height,
          maxline: maxline,
        );

  const TextBase.colorOtherMedium(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_14,
      required Color color,
      FontWeight weight = FontWeight.w500,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          textStyle: textStyle,
          height: height,
          maxline: maxline,
        );

  const TextBase.colorOtherSemiBold(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_14,
      required Color color,
      FontWeight weight = FontWeight.w600,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          textStyle: textStyle,
          height: height,
          maxline: maxline,
        );

  const TextBase.colorOtherBold(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_14,
      required Color color,
      FontWeight weight = FontWeight.w700,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          textStyle: textStyle,
          height: height,
          maxline: maxline,
        );

  const TextBase.colorOtherExtraBold(
      {Key? key,
      required String text,
      TextOverflow? overflow,
      double fontSize = TextFontSize.dimens_20,
      required Color color,
      FontWeight weight = FontWeight.w800,
      TextAlign? align,
      FontStyle? fontStyle,
      TextStyle? textStyle,
      double? height,
      int maxline = 100})
      : this(
          key: key,
          overflow: overflow,
          fontSize: fontSize,
          color: color,
          weight: weight,
          text: text,
          align: align,
          fontStyle: fontStyle,
          textStyle: textStyle,
          height: height,
          maxline: maxline,
        );

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: textStyle ??
          GoogleFonts.kanit(
            fontSize: fontSize,
            fontWeight: weight,
            color: color,
            fontStyle: fontStyle,
            height: height,
          ),
      overflow: overflow,
      maxLines: maxline,
      textAlign: align,
    );
  }
}
