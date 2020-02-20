import 'package:flutter/material.dart';
import 'package:parabola_guide/text_style.dart';

BoxDecoration scaffoldDecoration(BuildContext context) {
    return BoxDecoration();
}

ShapeDecoration materialButtonDecoration(BuildContext context) {
    return ShapeDecoration(
        color: Theme.of(context).primaryColorLight,
        shape: CircleBorder(),
    );
}

ShapeDecoration cardDecoration(BuildContext context) {
    return ShapeDecoration(
        shape: Theme
          .of(context)
          .cardTheme
          .shape,
    );
}

ShapeDecoration floatingActionButtonDecoration(BuildContext context) {
    return ShapeDecoration(
        shape: CircleBorder(),
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
    );
}

BoxDecoration canvasDecoration(BuildContext context) {
    return BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(32),
        ),
        boxShadow: <BoxShadow>[
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 3,
                color: Color(0x44000000),
            ),
        ],
    );
}