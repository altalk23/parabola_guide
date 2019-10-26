import 'package:flutter/material.dart';
import 'package:parabola_guide/screen/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            theme: ThemeData(
                backgroundColor: Color(0xFFEEFFFF),
                fontFamily: 'Comfortaa'
            ),
            home: MainScreen(),
        );
    }
}