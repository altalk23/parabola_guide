import 'package:flutter/material.dart';
import 'package:parabola_guide/decoration.dart';
import 'package:parabola_guide/style.dart';
import 'dart:math';
import 'dart:core';

List<FromEquationData> fromEquationData = [
    FromEquationData("Lorem ipsum", Equation(5.6, 2.4, 7.9)),
];

class FromEquationScreen extends StatefulWidget {
    @override
    _FromEquationScreenState createState() => _FromEquationScreenState();
}

class _FromEquationScreenState extends State<FromEquationScreen> {
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
                    fromEquationData.add(FromEquationData(name, Equation(
                        (random.nextDouble() - 0.5) * 20,
                        (random.nextDouble() - 0.5) * 20,
                        name == "Line" ? double.nan : (random.nextDouble() - 0.5) * 20,
                    )));
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
                            options(context, "L", "Line"),
                            options(context, "Q", "Quadratic"),
                        ],
                    ),
                );
            },
        );
    }
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
                decoration: scaffoldDecoration(context),
                child: Center(
                    child: ListView.builder(
                        itemBuilder: (context, index) {
                            return Card(
                                child: fromEquationData[index].name != "Line" ? Container(
                                    decoration: cardDecoration(context),
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                            Text(
                                                fromEquationData[index].name,
                                                style: mediumTextStyle(context),
                                            ),
                                            Text(
                                                fromEquationData[index].equation.a.toString() +
                                                  "x²" + (fromEquationData[index].equation.b < 0 ? " - " : " + ") +
                                                  fromEquationData[index].equation.b.abs().toString() +
                                                  "x" + (fromEquationData[index].equation.c < 0 ? " - " : " + ") +
                                                  fromEquationData[index].equation.c.abs().toString(),
                                                style: mediumTextStyle(context),
                                            ),
                                        ],
                                    ),
                                ) : Container(
                                    decoration: cardDecoration(context),
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                            Text(
                                                fromEquationData[index].name,
                                                style: mediumTextStyle(context),
                                            ),
                                            Text(
                                                fromEquationData[index].equation.a.toString() +
                                                  "x" + (fromEquationData[index].equation.b < 0 ? " - " : " + ") +
                                                  fromEquationData[index].equation.b.abs().toString(),
                                                style: mediumTextStyle(context),
                                            ),
                                        ],
                                    ),
                                ),
                            );
                        },
                        itemCount: fromEquationData.length,
                    ),
                ),
            ),
            floatingActionButton: Container(
                alignment: Alignment(-0.1, -0.9),
                decoration: floatingActionButtonDecoration(context),
                width: 82,
                height: 82,
                child: InkWell(
                    onTap: () {
                        modalSheet(context);
                    },
                    child: Text(
                        "+",
                        style: smallIconTextStyle(context),
                    ),
                ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
    }
}

class Equation {
    final double a;
    final double b;
    final double c;
    
    Equation(this.a, this.b, this.c);
}

class FromEquationData {
    final String name;
    final Equation equation;
    
    
    FromEquationData(this.name, this.equation);
}