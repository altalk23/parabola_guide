import 'dart:io';

import 'package:expressions/expressions.dart';
import 'package:flutter/services.dart';
import 'package:parabola_guide/item/point.dart';
import 'package:parabola_guide/item/quadratic_vertex.dart';
import 'package:parabola_guide/item/vertex.dart';
import 'package:parabola_guide/solution/type.dart';

class SolverHelper {
    List<String> str;
    final SolutionType type;
    
    SolverHelper(this.type) {
        rootBundle.loadString('assets/solutions/${type
          .toString()
          .split('.')
          .last}.txt').then((value) {
            str = value.split('| |');
            solve();
        });
    }

    String startConstantString(double a) {
        if (a == 0) return '';
        return '$a';
    }

    String constantString(double a) {
        if (a == 0) return '';
        return (a < 0 ? ' - ' : ' + ') + '${a.abs()}';
    }

    String startCoefficentString(double a) {
        if (a == 0) return '';
        if (a.abs() == 1) return a < 0 ? '-' : '';
        return '$a';
    }

    String coefficentString(double a) {
        if (a == 0) return '';
        if (a.abs() == 1) return a < 0 ? ' - ' : ' + ';
        return (a < 0 ? ' - ' : ' + ') + '${a.abs()}';
    }

    String quadraticVertex(double a, double h, double k) {
        return QuadraticVertex(a, h, k).toString();
    }
    
    void solve() {
        StringBuffer buffer = StringBuffer();
        Map<String, dynamic> context = {
            'ces': coefficentString,
            'sces': startCoefficentString,
            'cs': constantString,
            'scs': startConstantString,
        };
        const ExpressionEvaluator evaluator = const ExpressionEvaluator();
        
        switch (type) {
            case SolutionType.FindRootsFromFactoredForm:
            // TODO: Handle this case.
                break;
            case SolutionType.FindRootsFromVertexForm:
            // TODO: Handle this case.
                break;
            case SolutionType.FindRootsFromStandardFormUsingFactoring:
            // TODO: Handle this case.
                break;
            case SolutionType.FindRootsFromStandardFormUsingCompletingTheSquare:
            // TODO: Handle this case.
                break;
            case SolutionType.FindRootsFromStandardFormUsingDiscriminant:
            // TODO: Handle this case.
                break;
            case SolutionType.FindSumAndProductOfRoots:
            // TODO: Handle this case.
                break;
            case SolutionType.FindVertexOfEquation:
            // TODO: Handle this case.
                break;
            case SolutionType.FindEquationWithGivenTwoRootsAndOnePoint:
            // TODO: Handle this case.
                break;
            case SolutionType.FindEquationWithGivenVertexAndOnePoint:
                context.addAll({
                    'Vertex': Vertex(2, 6).toString(),
                    'Point': Point(5, -3).toString(),
                    'VertexX': Vertex(2, 6).x,
                    'PointX': Point(5, -3).x,
                    'VertexY': Vertex(2, 6).y,
                    'PointY': Point(5, -3).y,
                    'QuadraticVertex': quadraticVertex,
                });
                str.asMap().forEach((index, element) {
                    if (index % 2 == 0) { // String
                        buffer.write(element);
                    } 
                    else { // Expression
                        Expression expression = Expression.parse(element);
                        buffer.write(evaluator.eval(expression, context));
                    }
                });
                break;
            case SolutionType.FindEquationWithGivenOneRootAndTwoPoints:
            // TODO: Handle this case.
                break;
            case SolutionType.FindEquationWithGivenThreePoints:
            // TODO: Handle this case.
                break;
            case SolutionType.FindDiscriminantOfEquation:
            // TODO: Handle this case.
                break;
            case SolutionType.FindIntersectionsOfParabolaAndLine:
            // TODO: Handle this case.
                break;
            case SolutionType.FindIntersectionsOfTwoParabolas:
            // TODO: Handle this case.
                break;
            case SolutionType.SketchTheVertexFormLabelingImportantPoints:
            // TODO: Handle this case.
                break;
            case SolutionType.SketchTheFactoredFormLabelingImportantPoints:
            // TODO: Handle this case.
                break;
            case SolutionType.FindSumOfRootsWithGivenVertex:
            // TODO: Handle this case.
                break;
        }
        print(buffer.toString());
    }
}

