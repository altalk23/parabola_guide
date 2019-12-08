import 'package:flutter/material.dart';
import 'package:parabola_guide/decoration.dart';
import 'package:parabola_guide/dummy.dart';
import 'package:parabola_guide/graph.dart';
import 'package:parabola_guide/screen/from_equation_screen.dart';
import 'package:parabola_guide/style.dart';

class ToEquationSolver extends StatelessWidget {
    
    Card expandingCard(String title, String text, BuildContext context) {
        return Card(
            child: Container(
                decoration: cardDecoration(context),
                padding: EdgeInsets.all(8),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    child: ExpansionTile(
                        title: Text(
                            title,
                            style: mediumListStyle(context),
                        ),
                        children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                        text,
                                        style: smallTextStyle(context),
                                        textAlign: TextAlign.left,
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
                decoration: scaffoldDecoration(context),
                child: ListView(
                    children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(16),
                            decoration: canvasDecoration(context),
                            child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(32)),
                                child: AspectRatio(
                                    aspectRatio: 1,
                                    child: CustomPaint(
                                        painter: FunctionPainter([
                                            Equation(0.4, 0, -2),
                                            Equation(0, 1, 1),
                                        ]),
                                    ),
                                ),
                            ),
                        ),
                        expandingCard(
                            dummyTitleToEquation[0],
                            dummyTextToEquation[0],
                            context,
                        ),
                        expandingCard(
                            dummyTitleToEquation[1],
                            dummyTextToEquation[1],
                            context,
                        ),
                    ],
                ),
            ),
        );
    }
}

