
import 'package:flutter/material.dart';


const kColorPrimary = Color(0xff8E97FD);
const kColorLinghtYellow = Color(0xFFFFECCC);
const kColorLinghtGren = Color(0xFFEBEAEC);
const kColorDarkGren = Color(0xFF3F414E);

class PrimaryFont {
  static String kFontFamily = 'Time New Roman';
  static TextStyle medium(double size) {
    return TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: size,  
    );
  }

  static TextStyle thin(double size) {
    return TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w100,
        fontSize: size,  
    );
  }

  static TextStyle light(double size) {
    return TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w100,
        fontSize: size,  
    );
  }

  static TextStyle bold(double size) {
    return TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w700,
        fontSize: size,  
    );
  }

}

extension GetOrientation on BuildContext {
  Orientation get orientation => MediaQuery.of(this).orientation;
}