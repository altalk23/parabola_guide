import 'package:flutter/material.dart';
import 'package:parabola_guide/decoration.dart';
import 'package:parabola_guide/screen/from_equation.dart';
import 'package:parabola_guide/screen/main.dart';


class MainScreen extends StatefulWidget {
    @override
    _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Theme
              .of(context)
              .backgroundColor,
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                        Column(
                            children: <Widget>[
                                RawMaterialButton(
                                    shape: CircleBorder(),
                                    child: Container(
                                        decoration: materialButtonDecoration(context),
                                        child: Image(
                                          width: MediaQuery
                                            .of(context)
                                            .size
                                            .width * 0.5,
                                          image: AssetImage('assets/images/from_equation.png')
                                        ),
                                    ),
                                    onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => FromEquation(),
                                            
                                            ),
                                        );
                                    },
                                ),
                                Text(
                                    "From equation",
                                    style: Theme
                                      .of(context)
                                      .textTheme
                                      .subhead,
                                ),
                            ],
                        ),
                        Column(
                            children: <Widget>[
                                RawMaterialButton(
                                    shape: CircleBorder(),
                                    child: Container(
                                        decoration: materialButtonDecoration(context),
                                        child: Image(
                                          width: MediaQuery
                                            .of(context)
                                            .size
                                            .width * 0.5,
                                          image: AssetImage('assets/images/to_equation.png')
                                        ),
                                    ),
                                    onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => ToEquation(),
                                            ),
                                        );
                                    },
                                ),
                                Text(
                                    "To equation",
                                    style: Theme
                                      .of(context)
                                      .textTheme
                                      .subhead,
                                ),
                            ],
                        ),
                    ],
                ),
            ),
        );
    }
}