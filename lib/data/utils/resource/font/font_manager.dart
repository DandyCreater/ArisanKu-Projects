import 'package:flutter/cupertino.dart';

class FontManager {
  static const String fontFamily = "Poppins";
}

class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
  );
}

//TextStyle Area
TextStyle regularStyle({required double fontSize, required Color color}) {
  return _getTextStyle(
      fontSize, FontManager.fontFamily, FontWeightManager.regular, color);
}

TextStyle lightStyle({required double fontSize, required Color color}) {
  return _getTextStyle(
      fontSize, FontManager.fontFamily, FontWeightManager.light, color);
}

TextStyle mediumStyle({required double fontSize, required Color color}) {
  return _getTextStyle(
      fontSize, FontManager.fontFamily, FontWeightManager.medium, color);
}

TextStyle semiBoldStyle({required double fontSize, required Color color}) {
  return _getTextStyle(
      fontSize, FontManager.fontFamily, FontWeightManager.semiBold, color);
}

TextStyle boldStyle({required double fontSize, required Color color}) {
  return _getTextStyle(
      fontSize, FontManager.fontFamily, FontWeightManager.bold, color);
}
