import 'package:flutter/material.dart';
import 'package:tinycolor/tinycolor.dart';

class AppScaffold extends StatefulWidget {
    const AppScaffold({
        Key key,
        this.appBar,
        this.body,
        this.floatingActionButton,
        this.themeData,
    }) : super(key: key);
    
    final PreferredSizeWidget appBar;
    final Widget body;
    final FloatingActionButton floatingActionButton;
    final ThemeData themeData;
    
    
    @override
    _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
    ThemeData themeData;
    
    @override
    Widget build(BuildContext context) {
        themeData = widget.themeData;
        themeData ??= Theme.of(context);
        return Scaffold(
            appBar: widget.appBar,
            body: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment(1.0, 0.5),
                        colors: <Color>[
                            TinyColor(themeData.backgroundColor)
                              .darken(5)
                              .color,
                            themeData.backgroundColor,
                        ],
                    ),
                ),
                child: widget.body,
            ),
            floatingActionButton: widget.floatingActionButton,
        );
    }
}