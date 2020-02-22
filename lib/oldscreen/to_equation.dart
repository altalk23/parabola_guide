import 'package:flutter/material.dart';
import 'package:parabola_guide/screen/input.dart';
import 'package:parabola_guide/screen/solver.dart';

class ToEquation extends StatelessWidget {
    final PageController controller = PageController(
        initialPage: 0,
    );
    @override
    Widget build(BuildContext context) {
        return PageView(
            controller: controller,
            children: <Widget>[
                ToEquationScreen(),
                ToEquationSolver(),
            ],
        );
    }
}
