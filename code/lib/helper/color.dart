import 'dart:ui';
import 'package:flutter/material.dart';

const backgroundColor = const Color(0xffFFFFFF);
const greenButtonColor = const Color(0xff01B99F);
const lightGreyTextColor = const Color(0xff919EB6);
const blackTextTitleColor = const Color(0xff1D232B);
const blackTextDesColor = const Color(0xff313B49);
const greyHashTextColor = const Color(0xff5A6B87);
const greyHashBackgroundColor = const Color(0xffF7F8FA);
const greyHashBackgroundBorderColor = const Color(0xffCED3DE);

class MaterialColorGenerator {
  static MaterialColor from(Color color) {
    return MaterialColor(color.value, <int, Color>{
      50: color.withOpacity(0.1),
      100: color.withOpacity(0.2),
      200: color.withOpacity(0.3),
      300: color.withOpacity(0.4),
      400: color.withOpacity(0.5),
      500: color.withOpacity(0.6),
      600: color.withOpacity(0.7),
      700: color.withOpacity(0.8),
      800: color.withOpacity(0.9),
      900: color.withOpacity(1.0),
    });
  }
}
