import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
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
                    padding: EdgeInsets.all(16),
                    decoration: modalBottomSheetDecoration(context),
                    child: Wrap(
                        children: <Widget>[
                            ListTile(
                                leading: new Icon(Icons.music_note),
                                title: new Text('Music'),
                                onTap: () {
                                    setState(() {
                                        data.add("Lorem ipsum");
                                    });
                                    Navigator.pop(context);
                                },
                            ),
                            ListTile(
                                leading: new Icon(Icons.videocam),
                                title: new Text('Video'),
                                onTap: () {
                                    setState(() {
                                        data.add("dolor sit amet");
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
                decoration: floatingActionButtonDecoration(context),
                width: 82,
                height: 82,
                child: InkWell(
                    onTap: () {
                        modalSheet(context);
                    },
                    child: Container(
                        color: Colors.transparent,
                        alignment: Alignment(-0.1, -0.9),
                        child: Text(
                            "+",
                            style: smallIconTextStyle(context),
                        ),
                    ),
                ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
    }
}