// ignore_for_file: unused_element

import 'package:flutter/cupertino.dart';
import 'package:store_management_app/Presentations/fonts_manager.dart';

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

TextStyle _getregulartextStyle(
    {double fontSize = Fontsize.s12,
    FontWeight? fontWeight,
    required Color? color,
    String? fontfamily}) {
  return _getTextStyle(Fontsize.s12, FontweightManager.regular, color!,
      FontConstraints.fontfamily);
}

//light textStyle

TextStyle _getlighttextStyle(
    {double fontSize = Fontsize.s12,
    FontWeight? fontWeight,
    required Color? color,
    String? fontfamily}) {
  return _getTextStyle(Fontsize.s12, FontweightManager.light, color!,
      FontConstraints.fontfamily);
}

//Medium TextStyle

TextStyle _getmediumtextStyle(
    {double fontSize = Fontsize.s12,
    FontWeight? fontWeight,
    required Color? color,
    String? fontfamily}) {
  return _getTextStyle(Fontsize.s12, FontweightManager.medium, color!,
      FontConstraints.fontfamily);
}

//Semi Bold TextStyle

TextStyle _getsemiboldtextStyle(
    {double fontSize = Fontsize.s12,
    FontWeight? fontWeight,
    required Color? color,
    String? Fontfamily}) {
  return _getTextStyle(Fontsize.s12, FontweightManager.semiBold, color!,
      FontConstraints.fontfamily);
}

//Bold Text Style
TextStyle _getboldtextStyle(
    {double fontSize = Fontsize.s12,
    FontWeight? fontWeight,
    required Color? color,
    String? Fontfamily}) {
  return _getTextStyle(
      Fontsize.s12, FontweightManager.bold, color!, FontConstraints.fontfamily);
}
