import 'package:flutter/material.dart';
import 'package:parabola_guide/screen/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            theme: ThemeData(
                backgroundColor: Color(0xFFEEFFFF),
                primaryColor: Color(0xFF55CC77),
                accentColor: Color(0xFF7733AA),
                fontFamily: 'Comfortaa'
            ),
            home: MainScreen(),
        );
    }
}