import 'package:flutter/material.dart';
import 'package:parabola_guide/screen/main.dart';


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
                canvasColor: Colors.transparent,
                fontFamily: 'Nunito',
                textTheme: TextTheme(
                    body1: TextStyle(
                        fontSize: 20,
                    ),
                    subhead: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                    ),
                    title: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                    ),
                    body2: TextStyle(
                        fontFamily: 'Latin Modern Roman 10',
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                    ),
                    display2: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                    ),
                    subtitle: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                    ),
                    
                ),
            ),
            home: MainScreen(),
        );
    }
}
