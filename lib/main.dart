import 'package:flutter/material.dart';
import 'package:parabola_guide/screen/main.dart';
import 'package:parabola_guide/style.dart';

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
    primarySwatch ??= swatch();
    accentColor ??= Color(0xff9808DB);
    cardTheme ??= CardTheme(
        margin: EdgeInsets.all(12),
        elevation: 2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(12),
            ),
        ),
    );
    fontFamily ??= 'Latin Modern Roman 10';
    
    return ThemeData(
        backgroundColor: backgroundColor,
        primarySwatch: primarySwatch,
        accentColor: accentColor,
        fontFamily: fontFamily,
        cardTheme: cardTheme,
    );
}

