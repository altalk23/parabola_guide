import 'package:flutter/material.dart';
import 'package:parabola_guide/widget/scaffold.dart';

class Screen1 extends StatefulWidget {
    @override
    _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
    
    @override
    Widget build(BuildContext context) {
        return AppScaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(100.0),
                child: Hero(
                    tag: "screen1",
                    child: AppBar(
                        title: Text('Screen 1'),
                    ),
                ),
            ),
        );
    }
}