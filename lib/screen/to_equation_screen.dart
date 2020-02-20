import 'package:flutter/material.dart';
import 'package:parabola_guide/decoration.dart';
import 'package:parabola_guide/text_style.dart';
import 'dart:math';

List<ToEquationData> toEquationData = [
    ToEquationData("Lorem ipsum", 5.6, 2.4),
];

class ToEquationScreen extends StatefulWidget {
    @override
    _ToEquationScreenState createState() => _ToEquationScreenState();
}

class _ToEquationScreenState extends State<ToEquationScreen> {
    Random random = Random();
    
    
    ListTile options(BuildContext context, String icon, String name) {
        return ListTile(
            leading: Text(
                icon,
                style: largeTextStyle(context),
            ),
            title: Text(
                name,
                style: mediumTextStyle(context),
            ),
            onTap: () {
                setState(() {
                    toEquationData.add(ToEquationData(
                        name,
                        (random.nextDouble() - 0.5) * 20,
                        name == "Constant" || name == "Root" ? double.infinity : (random.nextDouble() - 0.5) * 20,
                    ));
                });
                Navigator.pop(context);
            },
        );
    }
    
    void modalSheet(BuildContext context) {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext bc) {
                return Container(
                    margin: EdgeInsets.all(16),
                    padding: EdgeInsets.all(8),
                    decoration: modalBottomSheetDecoration(context),
                    child: Wrap(
                        children: <Widget>[
                            options(context, "V", "Vertex"),
                            options(context, "X", "Root"),
                            options(context, "P", "Point"),
                            options(context, "A", "Constant"),
                        ],
                    ),
                );
            },
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
                child: Center(
                    child: ListView.builder(
                        itemBuilder: (context, index) {
                            return Card(
                                child: Container(
                                    decoration: cardDecoration(context),
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                            Text(
                                                toEquationData[index].name,
                                                style: Theme
                                                  .of(context)
                                                  .textTheme
                                                  .subtitle,
                                            ),
                                            Text(
                                                toEquationData[index].toString(),
                                                style: Theme
                                                  .of(context)
                                                  .textTheme
                                                  .body1,
                                            ),
                                        ],
                                    ),
                                ),
                            );
                        },
                        itemCount: toEquationData.length,
                    ),
                ),
            ),
            floatingActionButton: FloatingActionButton(
                elevation: 8,
                onPressed: () {
                    modalSheet(context);
                },
                child: Container(
                    alignment: Alignment(0, 1),
                    child: Image(
                      width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2,
                      image: AssetImage('assets/images/add.png')
                    ),
                ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
    }
}

class ToEquationData {
    final String name;
    final double x;
    final double y;
    
    ToEquationData(this.name, this.x, this.y);

    @override
    String toString() {
        if (y == double.infinity) return "$x";
        else return "($x, $y)";
    }
}