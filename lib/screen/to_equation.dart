import 'package:flutter/material.dart';
import 'package:parabola_guide/decoration.dart';
import 'package:parabola_guide/style.dart';

class ToEquationScreen extends StatefulWidget {
    @override
    _ToEquationScreenState createState() => _ToEquationScreenState();
}

class _ToEquationScreenState extends State<ToEquationScreen> {
    List<String> data = [
        'Lorem ipsum',
    ];
    
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
                            ListTile(
                                leading: Text(
                                    "V",
                                    style: largeTextStyle(context),
                                ),
                                title: Text(
                                    "Vertex",
                                    style: mediumTextStyle(context),
                                ),
                                onTap: () {
                                    setState(() {
                                        data.add("Vertex");
                                    });
                                    Navigator.pop(context);
                                },
                            ),
                            ListTile(
                                leading: Text(
                                    "X",
                                    style: largeTextStyle(context),
                                ),
                                title: Text(
                                    "Root",
                                    style: mediumTextStyle(context),
                                ),
                                onTap: () {
                                    setState(() {
                                        data.add("Root");
                                    });
                                    Navigator.pop(context);
                                },
                            ),
                            ListTile(
                                leading: Text(
                                    "P",
                                    style: largeTextStyle(context),
                                ),
                                title: Text(
                                    "Point",
                                    style: mediumTextStyle(context),
                                ),
                                onTap: () {
                                    setState(() {
                                        data.add("Point");
                                    });
                                    Navigator.pop(context);
                                },
                            ),
                            ListTile(
                                leading: Text(
                                    "A",
                                    style: largeTextStyle(context),
                                ),
                                title: Text(
                                    "Constant",
                                    style: mediumTextStyle(context),
                                ),
                                onTap: () {
                                    setState(() {
                                        data.add("Constant");
                                    });
                                    Navigator.pop(context);
                                },
                            ),
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
                                child: Container(
                                    decoration: cardDecoration(context),
                                    padding: EdgeInsets.all(16.0),
                                    child: Text(
                                        data[index],
                                        style: mediumTextStyle(context),
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

