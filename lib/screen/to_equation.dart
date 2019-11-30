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
        );
    }
}