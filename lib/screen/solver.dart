import 'package:flutter/material.dart';
import 'package:parabola_guide/decoration.dart';
import 'package:parabola_guide/dummy.dart';
import 'package:parabola_guide/graph.dart';
import 'package:parabola_guide/screen/input.dart';
import 'package:parabola_guide/solution/solution.dart';
import 'package:parabola_guide/text_style.dart';

class SolverScreen extends StatefulWidget {
    @override
    _SolverScreenState createState() => _SolverScreenState();
}

class _SolverScreenState extends State<SolverScreen> {
    
    Solver solver = Solver(itemData);
    
    Container canvas(BuildContext context) {
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
            child: ExpansionTile(
                title: Text(
                    title,
                ),
                children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                                text,
                                style: smallTextStyle(context),
                                textAlign: TextAlign.left,
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
    
    Widget portrait(BuildContext context) {
        return ListView(
            children: <Widget>[
                canvas(context),
                expandingCard(
                    dummyTitleToEquation[0],
                    dummyTextToEquation[0],
                    context,
                ),
                expandingCard(
                    dummyTitleToEquation[1],
                    dummyTextToEquation.length > 1 ? dummyTextToEquation[1] : '',
                    context,
                ),
            ],
        );
    }
    
    Widget landsacpe(BuildContext context) {
        return Row(
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
                                dummyTextToEquation.length > 1 ? dummyTextToEquation[1] : '',
                                context,
                            ),
                        ],
                    ),
                ),
            ],
        );
    }
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Theme
              .of(context)
              .backgroundColor,
            body: Container(
                decoration: scaffoldDecoration(context),
                child: MediaQuery
                  .of(context)
                  .size
                  .width < MediaQuery
                  .of(context)
                  .size
                  .height ? portrait(context) : landsacpe(context),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                    setState(() {
                        dummyTextToEquation = solver.solve();
                    });
                },
            ),
        );
    }
}

