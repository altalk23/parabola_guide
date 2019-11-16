import 'package:flutter/material.dart';
import 'package:parabola_guide/screen/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: mainTheme(),
            home: MainScreen(),
        );
    }
}

ThemeData mainTheme({
    Color backgroundColor,
    MaterialColor primarySwatch,
    Color accentColor,
    Color highlightColor,
    Color splashColor,
    String fontFamily,
    CardTheme cardTheme,
}) {
    backgroundColor ??= Color(0xffe5def8);
    primarySwatch ??= MaterialColor(
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
    accentColor ??= Color(0xff9808DB);
    cardTheme ??= CardTheme(
        margin: EdgeInsets.all(12.0),
        elevation: 2.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(8.0),
            ),
        ),
    );
    fontFamily ??= 'Comfortaa';
    
    return ThemeData(
        backgroundColor: backgroundColor,
        primarySwatch: primarySwatch,
        accentColor: accentColor,
        fontFamily: fontFamily,
        cardTheme: cardTheme,
    );
}