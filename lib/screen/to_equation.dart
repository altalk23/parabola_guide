import 'package:flutter/material.dart';
import 'package:parabola_guide/screen/to_equation_screen.dart';
import 'package:parabola_guide/screen/to_equation_solution.dart';

class ToEquation extends StatelessWidget {
    final PageController controller = PageController(
        initialPage: 1,
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
