import 'package:expressions/expressions.dart';
import 'package:flutter/services.dart';
import 'package:parabola_guide/item/constant.dart';
import 'package:parabola_guide/item/item.dart';
import 'package:parabola_guide/item/line.dart';
import 'package:parabola_guide/item/point.dart';
import 'package:parabola_guide/item/quadratic_factored.dart';
import 'package:parabola_guide/item/quadratic_standard.dart';
import 'package:parabola_guide/item/quadratic_vertex.dart';
import 'package:parabola_guide/item/vertex.dart';
import 'package:parabola_guide/solution/type.dart';
import 'package:parabola_guide/extensions.dart';

class SolverHelper {
    List<String> str;
    final List<Item> items;
    final SolutionType type;
    
    SolverHelper(this.type, this.items) {
        rootBundle.loadString('assets/solutions/${type
          .toString()
          .split('.')
          .last}.txt').then((value) {
            str = value.split('| |');
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

    
    
    String solve() {
        StringBuffer buffer = StringBuffer();
        Map<String, dynamic> context = {
            'ces': coefficentString,
            'sces': startCoefficentString,
            'cs': constantString,
            'scs': startConstantString,
        };
        items.forEach((element) {
            int idx = 1;
            print('${element.name()}$idx');
            while (context.containsKey('${element.name()}$idx')) ++idx;
            context.putIfAbsent('${element.name()}$idx', () => element.toString());
            if (element is Point) {
                context.addAll({
                    '${element.name()}${idx}X': element.x,
                    '${element.name()}${idx}Y': element.y,
                });
            }
            else if (element is Constant) {
                context.addAll({
                    '${element.name()}${idx}C': element.value,
                });
            }
            else if (element is Line) {
                context.addAll({
                    '${element.name()}${idx}A': element.a,
                    '${element.name()}${idx}B': element.b,
                });
            }
            else if (element is QuadraticStandard) {
                context.addAll({
                    '${element.name()}${idx}A': element.a,
                    '${element.name()}${idx}B': element.b,
                    '${element.name()}${idx}C': element.c,
                });
            }
            else if (element is QuadraticVertex) {
                context.addAll({
                    '${element.name()}${idx}A': element.a,
                    '${element.name()}${idx}H': element.h,
                    '${element.name()}${idx}K': element.k,
                });
            }
            else if (element is QuadraticFactored) {
                context.addAll({
                    '${element.name()}${idx}A': element.a,
                    '${element.name()}${idx}X1': element.x1,
                    '${element.name()}${idx}X2': element.x2,
                });
            }
        });
        print("asdg");
        
        
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
                String vertex(double x, double y) {
                    return Vertex(x, y).toString();
                }
                context.addAll({
                    'Vertex': vertex,
                });
                break;
            case SolutionType.FindEquationWithGivenTwoRootsAndOnePoint:
            // TODO: Handle this case.
                break;
            case SolutionType.FindEquationWithGivenVertexAndOnePoint:
                String quadraticVertex(double a, double h, double k) {
                    return QuadraticVertex(a, h, k).toString();
                }
                context.addAll({
                    'QuadraticVertex': quadraticVertex,
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
        str.asMap().forEach((index, element) {
            if (index % 2 == 0) { // String
                buffer.write(element);
            }
            else { // Expression
                print(element);
                Expression expression = Expression.parse(element);
                buffer.write(evaluator.eval(expression, context));
            }
        });
        print(buffer.toString());
        return buffer.toString();
    }
}

