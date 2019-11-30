import 'package:flutter/material.dart';

MaterialColor swatch() => MaterialColor(
    0xfff451b0,
    <int, Color>{
        50: Color(0xfffce3f2),
        100: Color(0xfff7b8de),
        200: Color(0xfff488c8),
        300: Color(0xfff451b0),
        400: Color(0xfff5039b),
        500: Color(0xfff50084),
        600: Color(0xffe3007f),
        700: Color(0xffcb0079),
        800: Color(0xffb40073),
        900: Color(0xff8b006a),
    },
);

TextStyle iconTextStyle(context) {
    return TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.w800
    );
}

TextStyle mediumTextStyle(context) {
    return TextStyle(
        fontSize: 28,
    );
}

TextStyle smallIconTextStyle(context) {
    return TextStyle(
      fontSize: 44,
      fontWeight: FontWeight.w800,
      color: Colors.white,
    );
}