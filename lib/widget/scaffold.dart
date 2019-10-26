import 'package:flutter/material.dart';
import 'package:tinycolor/tinycolor.dart';

class AppScaffold extends StatefulWidget {
    const AppScaffold({Key key, this.appBar, this.body,}) : super(key: key);
    
    final AppBar appBar;
    final Widget body;
    
    @override
    _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: widget.appBar,
            body: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[
                            TinyColor(Theme
                              .of(context)
                              .backgroundColor)
                              .darken(10)
                              .color,
                            Theme
                              .of(context)
                              .backgroundColor,
                        ],
                    ),
                ),
                child: widget.body,
            ),
        );
    }
}