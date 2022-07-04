// ignore_for_file: unused_element

import 'package:flutter/cupertino.dart';
import 'package:store_management_app/Presentations/Resources/fonts_manager.dart';

TextStyle _getTextStyle(
    double fontsize, FontWeight fontWeight, Color color, String fontFamily) {
  return TextStyle(
    fontSize: fontsize,
    fontWeight: fontWeight,
    color: color,
    fontFamily: fontFamily,
  );
}

//regular style

TextStyle getregulartextStyle(
    {double fontSize = Fontsize.s12,
    FontWeight? fontWeight,
    required Color? color,
    String? fontfamily}) {
  return _getTextStyle(Fontsize.s12, FontweightManager.regular, color!,
      FontConstraints.fontfamily);
}

//light textStyle

TextStyle getlighttextStyle(
    {double fontSize = Fontsize.s12,
    FontWeight? fontWeight,
    required Color? color,
    String? fontfamily}) {
  return _getTextStyle(Fontsize.s12, FontweightManager.light, color!,
      FontConstraints.fontfamily);
}

//Medium TextStyle

TextStyle getmediumtextStyle(
    {double fontSize = Fontsize.s12,
    FontWeight? fontWeight,
    required Color? color,
    String? fontfamily}) {
  return _getTextStyle(Fontsize.s12, FontweightManager.medium, color!,
      FontConstraints.fontfamily);
}

//Semi Bold TextStyle

TextStyle getsemiboldtextStyle(
    {double fontSize = Fontsize.s12,
    FontWeight? fontWeight,
    required Color? color,
    String? fontfamily}) {
  return _getTextStyle(Fontsize.s12, FontweightManager.semiBold, color!,
      FontConstraints.fontfamily);
}

//Bold Text Style
TextStyle getboldtextStyle(
    {double fontSize = Fontsize.s12,
    FontWeight? fontWeight,
    required Color? color,
    String? fFontfamily}) {
  return _getTextStyle(
      Fontsize.s12, FontweightManager.bold, color!, FontConstraints.fontfamily);
}
