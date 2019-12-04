import 'package:flutter/material.dart';
import 'package:parabola_guide/decoration.dart';
import 'package:parabola_guide/graph.dart';
import 'package:parabola_guide/screen/from_equation_screen.dart';

class FromEquationSolver extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
                decoration: scaffoldDecoration(context),
                child: ListView(
                    children: <Widget>[
                        Placeholder(
                            fallbackWidth: 500,
                            fallbackHeight: 200,
                        ),
                        Placeholder(
                            fallbackWidth: 500,
                            fallbackHeight: 200,
                        ),
                        Placeholder(
                            fallbackWidth: 500,
                            fallbackHeight: 200,
                        ),
                        Placeholder(
                            fallbackWidth: 500,
                            fallbackHeight: 200,
                        ),
                        Container(
                            margin: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                border: Border.all(width: 3),
                            
                            
                            ),
                            child: AspectRatio(
                                aspectRatio: 1,
                                child: Container(
                                    child: CustomPaint(
                                        painter: FunctionPainter([
                                            Equation(1, 0, 0),
                                            Equation(0, 1, 0),
                                        ]),
                                    ),
                                ),
                            ),
                        ),
                        Placeholder(
                            fallbackWidth: 500,
                            fallbackHeight: 200,
                        ),
                        Placeholder(
                            fallbackWidth: 500,
                            fallbackHeight: 200,
                        ),
                        Placeholder(
                            fallbackWidth: 500,
                            fallbackHeight: 200,
                        ),
                        Placeholder(
                            fallbackWidth: 500,
                            fallbackHeight: 200,
                        ),
                    ],
                ),
            ),
        );
    }
}

