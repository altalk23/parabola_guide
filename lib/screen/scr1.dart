import 'package:flutter/material.dart';
import 'package:parabola_guide/main.dart';
import 'package:parabola_guide/widget/scaffold.dart';
import 'package:tinycolor/tinycolor.dart';

class Screen1 extends StatefulWidget {
    @override
    _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
    
    @override
    Widget build(BuildContext context) {
        return AppScaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(100.0),
                child: Hero(
                    tag: "screen1",
                    child: AppBar(
                        title: Text('Screen 1'),
                    ),
                ),
            ),
            themeData: AppThemeData(
                primarySwatch: MaterialColor(
                    0xFFFF88AA,
                    <int, Color>{
                        50: TinyColor(Color(0xFFFF88AA))
                          .lighten(40)
                          .color,
                        100: TinyColor(Color(0xFFFF88AA))
                          .lighten(36)
                          .color,
                        200: TinyColor(Color(0xFFFF88AA))
                          .lighten(27)
                          .color,
                        300: TinyColor(Color(0xFFFF88AA))
                          .lighten(18)
                          .color,
                        400: TinyColor(Color(0xFFFF88AA))
                          .lighten(9)
                          .color,
                        500: Color(0xFFFF88AA),
                        600: TinyColor(Color(0xFFFF88AA))
                          .darken(9)
                          .color,
                        700: TinyColor(Color(0xFFFF88AA))
                          .darken(18)
                          .color,
                        800: TinyColor(Color(0xFFFF88AA))
                          .darken(27)
                          .color,
                        900: TinyColor(Color(0xFFFF88AA))
                          .darken(36)
                          .color,
                    },
                ),
                backgroundColor: Color(0xFFFF88AA),
            ).toThemeData(),
        );
    }
}