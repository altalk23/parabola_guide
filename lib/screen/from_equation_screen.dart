import 'package:flutter/material.dart';
import 'package:parabola_guide/decoration.dart';
import 'package:parabola_guide/text_style.dart';
import 'dart:math';
import 'dart:core';

import '../equation.dart';


List<FromEquationData> fromEquationData = [
    FromEquationData("Lorem ipsum", Equation.fromStandard(5.6, 2.4, 7.9)),
];

class FromEquationScreen extends StatefulWidget {
    @override
    _FromEquationScreenState createState() => _FromEquationScreenState();
}

class _FromEquationScreenState extends State<FromEquationScreen> {
    TextEditingController aController = TextEditingController();
    TextEditingController bController = TextEditingController();
    TextEditingController cController = TextEditingController();
    int selected = -1;
    
    
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
                    fromEquationData.add(FromEquationData(name, Equation.fromStandard(0, 0, 0,)));
                    selected = fromEquationData.length - 1;
                    aController.text = '';
                    bController.text = '';
                    cController.text = '';
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
                            options(context, "C", "Constant"),
                            options(context, "L", "Line"),
                            options(context, "A", "Standard Form"),
                            options(context, "V", "Vertex Form"),
                            options(context, "X", "Factored Form"),
                        ],
                    ),
                );
            },
        );
    }

    bool ifConstant() {
        return fromEquationData[selected].name == 'Constant';
    }

    bool ifLine() {
        return fromEquationData[selected].name == 'Constant';
    }

    Widget input() {
        return Row(
            children: <Widget>[
                Expanded(
                    child: TextField(
                        controller: aController,
                        onChanged: (String value) {
                            setState(() {
                                fromEquationData[selected] = FromEquationData.withX(double.parse(value), toEquationData[selected]);
                            });
                        },
                    ),
                ),
                ifconstant() ? Container() : Expanded(
                    child: TextField(
                        controller: yController,
                        onChanged: (String value) {
                            setState(() {
                                toEquationData[selected] = ToEquationData.withY(double.parse(value), toEquationData[selected]);
                            });
                        },
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
                                                fromEquationData[index].name,
                                                style: Theme
                                                  .of(context)
                                                  .textTheme
                                                  .subtitle,
                                            ),
                                            Text(
                                                fromEquationData[index].equation.toString(),
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
                        itemCount: fromEquationData.length,
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


class FromEquationData {
    final String name;
    final Equation equation;
    
    
    FromEquationData(this.name, this.equation);
    
    FromEquationData.withA(int a, FromEquationData data) : name = a == 0 ? "Line" : data.name,
}