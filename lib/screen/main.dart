import 'package:flutter/material.dart';
import 'package:parabola_guide/widget/scaffold.dart';

class MainScreen extends StatefulWidget {
    @override
    _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
    int _counter = 0;
    
    @override
    Widget build(BuildContext context) {
        return AppScaffold(
            appBar: AppBar(
                title: Text('Title'),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        MaterialButton(
                            onPressed: () {
                                setState(() {
                                    _counter += 10;
                                });
                            },
                            child: Text('Increase 10'),
                        ),
                        Text('Sample Text #$_counter'),
                    ],
                ),
            ),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                    setState(() {
                        _counter++;
                    });
                },
            ),
        );
    }
}