
import 'package:flutter/material.dart';
import 'package:parabola_guide/decoration.dart';
import 'package:parabola_guide/text_style.dart';
import 'dart:math';
import '../equation.dart';

List<ToEquationData> toEquationData = [
    ToEquationData("Vertex", 5.6, 2.4),
];

class ToEquationScreen extends StatefulWidget {
    @override
    _ToEquationScreenState createState() => _ToEquationScreenState();
}

class _ToEquationScreenState extends State<ToEquationScreen> {
    Random random = Random();
    TextEditingController xController = TextEditingController();
    TextEditingController yController = TextEditingController();
    int selected = -1;
    String selectedName = '';
    
    
    void dispose() {
        xController.dispose();
        yController.dispose();
        super.dispose();
    }
    
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
                    toEquationData.add(ToEquationData(name, 0, 0));
                    selected = toEquationData.length - 1;
                    xController.text = '';
                    yController.text = '';
                    
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
    
    bool ifconstant() {
        return toEquationData[selected].name == 'Constant';
    }
    
    Widget ifConstant() {
        return Row(
            children: <Widget>[
                Expanded(
                    child: TextField(
                        controller: xController,
                        onChanged: (String value) {
                            setState(() {
                                toEquationData[selected] = ToEquationData.withX(double.parse(value), toEquationData[selected]);
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
            body: Center(
                child: Column(
                    children: <Widget>[
                        SizedBox(height: 70,),
                        selected < 0 ? Container() : DropdownButton<String>(
                            value: toEquationData[selected].name,
                            onChanged: (value) {
                                setState(() {
                                    toEquationData[selected] = ToEquationData.withName(value, toEquationData[selected]);
                                });
                            },
                            items: ['Vertex', 'Root', 'Point', 'Constant'].map((String e) =>
                              DropdownMenuItem<String>(
                                  child: Text(e),
                                  value: e,
                              )).toList(),
                        ),
                        selected < 0 ? Container() : ifConstant(),
                        Expanded(
                            child: ListView.builder(
                                itemBuilder: (context, index) {
                                    return GestureDetector(
                                        onTap: () {
                                            setState(() {
                                                xController.text = toEquationData[index].x.toString();
                                                yController.text = toEquationData[index].y.toString();
                                                selected = index;
                                            });
                                        },
                                        child: Card(
                                            color: index == selected ? Theme
                                              .of(context)
                                              .primaryColorLight : null,
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
                    ],
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

extension on double {
    double roundPrecision(int precision) {
        return (this * pow(10, precision)).round() / pow(10, precision);
    }
}

class ToEquationData {
    final String name;
    final double x;
    final double y;
    
    ToEquationData(this.name, this.x, this.y);
    
    ToEquationData.withName(this.name, ToEquationData data)
      : this.x = data.x,
          this.y = data.y;
    
    ToEquationData.withX(this.x, ToEquationData data)
      : this.name = data.name,
          this.y = data.y;
    
    ToEquationData.withY(this.y, ToEquationData data)
      : this.x = data.x,
          this.name = data.name;
    
    @override
    String toString() {
        if (name == 'Constant')
            return "${x.roundPrecision(precision)}";
        else
            return "(${x.roundPrecision(precision)}, ${y.roundPrecision(precision)})";
    }
}