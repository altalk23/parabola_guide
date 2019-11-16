import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
    const AppCard({
        Key key,
        this.color,
        this.child,
        this.onTap,
        this.tag,
    }) : super(key: key);
    final Color color;
    final Widget child;
    final VoidCallback onTap;
    final String tag;
    
    @override
    Widget build(BuildContext context) {
        return Expanded(
            child: Hero(
                tag: tag,
              child: Container(
                  constraints: BoxConstraints.expand(),
                  padding: const EdgeInsets.all(8),
                  child: Card(
                      color: color,
                      child: Material(
                          color: Color(0x00000000),
                          child: InkWell(
                              onTap: onTap,
                              child: Center(
                                  child: child,
                              ),
                          ),
                      ),
                  ),
              ),
            ),
        );
    }
}

/*

child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment(1.0, 0.5),
                                colors: <Color>[
                                    TinyColor(Theme
                                      .of(context)
                                      .cardColor)
                                      .darken(5)
                                      .color,
                                    Theme
                                      .of(context)
                                      .cardColor,
                                ],
                            ),
                        ),
                        child: Center(
                            child: child,
                        ),
                    ),
 */