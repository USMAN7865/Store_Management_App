// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/cupertino.dart';

class ColorManager {
  static Color primarycolor = HexColor.fromHex('#ED9728');
  static Color darkgrey = HexColor.fromHex('#525252');
  static Color grey = HexColor.fromHex('#737477');
  static Color lightgrey = HexColor.fromHex('#9E9E9E');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF' + hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
