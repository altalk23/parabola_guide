import 'package:flutter/material.dart';
import 'package:parabola_guide/decoration.dart';
import 'package:parabola_guide/screen/from_equation.dart';
import 'package:parabola_guide/screen/to_equation.dart';
import 'package:parabola_guide/style.dart';

class MainScreen extends StatefulWidget {
    @override
    _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
                decoration: scaffoldDecoration(context),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                            Column(
                                children: <Widget>[
                                    RawMaterialButton(
                                        shape: CircleBorder(),
                                        child: Container(
                                            decoration: materialButtonDecoration(context),
                                            padding: EdgeInsets.all(32),
                                            child: Text(
                                                "=→",
                                                style: iconTextStyle(context),
                                            ),
                                        ),
                                        onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => FromEquationScreen(),
                                                ),
                                            );
                                        },
                                    ),
                                    Text(
                                        "From equation",
                                        style: mediumTextStyle(context),
                                    ),
                                ],
                            ),
                            Column(
                                children: <Widget>[
                                    RawMaterialButton(
                                        shape: CircleBorder(),
                                        child: Container(
                                            decoration: materialButtonDecoration(context),
                                            padding: EdgeInsets.all(32),
                                            child: Text(
                                                "→=",
                                                style: iconTextStyle(context),
                                            ),
                                        ),
                                        onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => ToEquationScreen(),
                                                ),
                                            );
                                        },
                                    ),
                                    Text(
                                        "To equation",
                                        style: mediumTextStyle(context),
                                    ),
                                ],
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}