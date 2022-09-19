import 'package:flutter/material.dart';


class AppStyle{
  // more about color
  // https://imagecolorpicker.com/color-code/f2f3f7
  static const Color background = Color(0xfff2f3f7);
  static const Color surface = Color(0xfff2f3f7);
  static const Color shadow = Color(0xffa9aaad);
  static const Color lightShadow = Color(0xfff7f8fc);


  static const Color white = Color(0xfff9feff);
  static const Color blackText = Color(0xff333333);
  static const Color blueGray = Color(0xff9baabf);


  static BoxDecoration decoration(){
    const Offset distance = Offset(3, 3);
    const double radius = 20;
    const double blur = 10;
    const double spread = 1;

    return BoxDecoration(
      color: surface,
      borderRadius: BorderRadius.circular(radius),
      boxShadow: [
        const BoxShadow(
          color: shadow,
          offset: distance,
          blurRadius: blur,
          spreadRadius: spread,
        ),
        BoxShadow(
          color: lightShadow,
          offset: - const Offset(9, 9),
          blurRadius: blur / 2,
          spreadRadius: spread * 2,
        ),
      ],
    );
  }
}