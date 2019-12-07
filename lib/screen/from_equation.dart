import 'package:flutter/material.dart';
import 'package:parabola_guide/screen/from_equation_screen.dart';
import 'package:parabola_guide/screen/from_equation_solution.dart';

class FromEquation extends StatelessWidget {
    final PageController controller = PageController(
        initialPage: 0,
    );
    @override
    Widget build(BuildContext context) {
        return PageView(
            controller: controller,
            children: <Widget>[
                FromEquationScreen(),
                FromEquationSolver(),
            ],
        );
    }
}
