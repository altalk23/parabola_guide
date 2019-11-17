import 'package:flutter/material.dart';
import 'package:parabola_guide/behavior/start.dart';

class MainScreen extends StatefulWidget {
    @override
    _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
    @override
    Widget build(BuildContext context) {
        ThemeData theme = Theme.of(context);
        return Scaffold(
            appBar: AppBar(),
            body: ListView(
                children: <Widget>[
                    Card(
                        child: Container(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                                "Lorem ipsum",
                                style: theme.textTheme.headline,
                            ),
                        ),
                    ),
                ],
            ),
            floatingActionButton: startFloatingActionButton(),
        );
    }
}
