import 'package:flutter/material.dart';
import 'package:tinycolor/tinycolor.dart';

class AppScaffold extends StatefulWidget {
    const AppScaffold({Key key, this.appBar, this.body, this.floatingActionButton,}) : super(key: key);
    
    final AppBar appBar;
    final Widget body;
    final FloatingActionButton floatingActionButton;
    
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
                        begin: Alignment.bottomLeft,
                        end: Alignment(1.0, 0.5),
                        colors: <Color>[
                            TinyColor(Theme
                              .of(context)
                              .backgroundColor)
                              .darken(5)
                              .color,
                            Theme
                              .of(context)
                              .backgroundColor,
                        ],
                    ),
                ),
                child: widget.body,
            ),
            floatingActionButton: widget.floatingActionButton,
        );
    }
}