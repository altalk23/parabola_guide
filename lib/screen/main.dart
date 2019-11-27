import 'package:flutter/material.dart';
import 'package:parabola_guide/decoration.dart';

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
                                                style: TextStyle(
                                                  fontSize: 72,
                                                  fontFamily: "Latin Modern Roman 10",
                                                  fontWeight: FontWeight.w800
                                                ),
                                            ),
                                        ),
                                        onPressed: () {},
                                    ),
                                    Text(
                                        "From equation",
                                        style: TextStyle(
                                          fontSize: 28,
                                          fontFamily: "Latin Modern Roman 10",
                                        ),
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
                                                style: TextStyle(
                                                  fontSize: 72,
                                                  fontFamily: "Latin Modern Roman 10",
                                                  fontWeight: FontWeight.w800
                                                ),
                                            ),
                                        ),
                                        onPressed: () {},
                                    ),
                                    Text(
                                        "To equation",
                                        style: TextStyle(
                                            fontSize: 28,
                                            fontFamily: "Latin Modern Roman 10",
                                        ),
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