// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class ColorManager {
  static Color positiveColor = HexColor.fromHex("#5843BE");
  static Color negativeColor = HexColor.fromHex("#BC1533");
  static Color greenColor = HexColor.fromHex("#38B48D");
  static Color whiteColor = HexColor.fromHex("#FFFFFF");
  static Color blackColor = HexColor.fromHex("#000000");
  static Color greyColor = HexColor.fromHex("#DFDFDF");

  //screen Color
  static Color backgroundColor = HexColor.fromHex("#FFFFFF");
  static Color shadowColor = HexColor.fromHex("#DCDCDC");
  static Color backgroundCameraColor = HexColor.fromHex("#F2F2F2");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
