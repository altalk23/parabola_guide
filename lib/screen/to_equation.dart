import 'package:flutter/material.dart';
import 'package:parabola_guide/decoration.dart';
import 'package:parabola_guide/style.dart';
import 'dart:math';

class ToEquationScreen extends StatefulWidget {
    @override
    _ToEquationScreenState createState() => _ToEquationScreenState();
}

class _ToEquationScreenState extends State<ToEquationScreen> {
    Random random = Random();
    List<ToEquationData> data = [
        ToEquationData("Lorem ipsum", 5.6, 2.4),
    ];
    
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
                    data.add(ToEquationData(
                        name,
                        (random.nextDouble() - 0.5) * 20,
                        name == "Constant" ? double.nan : (random.nextDouble() - 0.5) * 20,
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
            body: Container(
                decoration: scaffoldDecoration(context),
                child: Center(
                    child: ListView.builder(
                        itemBuilder: (context, index) {
                            return Card(
                                child: data[index].name != "Constant" ? Container(
                                    decoration: cardDecoration(context),
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                            Text(
                                                data[index].name,
                                                style: mediumTextStyle(context),
                                            ),
                                            Text(
                                                "(" +
                                                  data[index].x.toString() +
                                                  ", " +
                                                  data[index].y.toString() +
                                                  ")",
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
                                                data[index].name,
                                                style: mediumTextStyle(context),
                                            ),
                                            Text(
                                                data[index].x.toString(),
                                                style: mediumTextStyle(context),
                                            ),
                                        ],
                                    ),
                                ),
                            );
                        },
                        itemCount: data.length,
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

class ToEquationData {
    final String name;
    final double x;
    final double y;
    
    ToEquationData(this.name, this.x, this.y);
}