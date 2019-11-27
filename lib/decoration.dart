import 'package:flutter/material.dart';
import 'package:parabola_guide/main.dart';

BoxDecoration scaffoldDecoration(BuildContext context) {
    return BoxDecoration(
        gradient: LinearGradient(
            colors: <Color>[
                Theme.of(context).backgroundColor,
                Theme.of(context).primaryColorLight,
            ],
            begin: Alignment(0.6, -0.8),
            end: Alignment(-0.6, 0.8),
        ),
    );
}

ShapeDecoration materialButtonDecoration(BuildContext context) {
    return ShapeDecoration(
        shape: CircleBorder(),
        gradient: LinearGradient(
            colors: <Color>[
                swatch().shade500.withAlpha(85),
                swatch().shade800.withAlpha(60),
            ],
            begin: Alignment(-0.3, 0.9),
            end: Alignment(0.3, -0.9),
        ),
    );
}