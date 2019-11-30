import 'package:flutter/material.dart';
import 'package:parabola_guide/style.dart';

BoxDecoration scaffoldDecoration(BuildContext context) {
    return BoxDecoration(
        gradient: LinearGradient(
            colors: <Color>[
                Theme
                  .of(context)
                  .backgroundColor,
                Theme
                  .of(context)
                  .primaryColorLight,
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

ShapeDecoration cardDecoration(BuildContext context) {
    return ShapeDecoration(
        shape: Theme
          .of(context)
          .cardTheme
          .shape,
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

ShapeDecoration floatingActionButtonDecoration(BuildContext context) {
    return ShapeDecoration(
        shape: CircleBorder(),
        gradient: LinearGradient(
            colors: <Color>[
                swatch().shade400,
                swatch().shade700,
            ],
            begin: Alignment(-0.4, 0.9),
            end: Alignment(0.4, -0.9),
        ),
        shadows: <BoxShadow>[
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 3,
                color: Color(0x44000000),
            ),
        ],
    );
}

BoxDecoration modalBottomSheetDecoration(BuildContext context) {
    return BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 3,
                color: Color(0x44000000),
            ),
        ],
        gradient: LinearGradient(
            colors: <Color>[
                swatch().shade100,
                swatch().shade50,
            ],
            begin: Alignment(-0.4, 0.9),
            end: Alignment(0.4, -0.9),
        ),
    );
}