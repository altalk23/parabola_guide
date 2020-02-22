import 'package:flutter/material.dart';
import 'package:parabola_guide/decoration.dart';
import 'package:parabola_guide/dummy.dart';
import 'package:parabola_guide/graph.dart';
import 'package:parabola_guide/text_style.dart';


class FromEquationSolver extends StatelessWidget {
    
    Container canvas(BuildContext context) {
        painterEquations.clear();
        painterEquations.addAll([]);
        return Container(
            margin: EdgeInsets.all(16),
            decoration: canvasDecoration(context),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(32)),
                child: AspectRatio(
                    aspectRatio: 1,
                    child: CustomPaint(
                        painter: FunctionPainter(),
                    ),
                ),
            ),
        );
    }
    
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
                child: MediaQuery
                  .of(context)
                  .size
                  .width < MediaQuery
                  .of(context)
                  .size
                  .height ? ListView(
                    children: <Widget>[
                        canvas(context),
                        expandingCard(
                            dummyTitleFromEquation[0],
                            dummyTextFromEquation[0],
                            context,
                        ),
                        expandingCard(
                            dummyTitleFromEquation[1],
                            dummyTextFromEquation[1],
                            context,
                        ),
                    ],
                ) : Row(
                    children: <Widget>[
                        canvas(context),
                        Container(
                            width: MediaQuery
                              .of(context)
                              .size
                              .width - MediaQuery
                              .of(context)
                              .size
                              .height,
                            child: ListView(
                                children: <Widget>[
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
                    ],
                ),
            ),
        );
    }
}

