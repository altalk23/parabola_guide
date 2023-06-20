import 'package:flutter/material.dart';
import 'package:parabola_guide/screen/main.dart';

import 'package:parabola_guide/solution/helper.dart';
import 'package:parabola_guide/solution/type.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xfffff8e1),
        primaryColor: Color(0xffff5716),
        primaryColorLight: Color(0xffff8a48),
        primaryColorDark: Color(0xffc41d00),
        accentColor: Color(0xff307489),
        cardTheme: CardTheme(
          margin: EdgeInsets.all(12),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        fontFamily: 'Nunito',
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 20,
          ),
          subtitle1: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w400,
          ),
          headline6: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontFamily: 'Latin Modern Roman 10',
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
          headline3: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
          headline5: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      home: MainScreen(),
    );
  }
}
