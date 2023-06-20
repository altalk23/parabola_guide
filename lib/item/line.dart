import 'package:parabola_guide/item/equation.dart';
import 'package:parabola_guide/item/item_type.dart';
import 'package:parabola_guide/item/item.dart';

class Line extends Equation {
    final double a;
    final double b;
    Line(this.a, this.b) : super.type(ItemType.line, [a, b]);
}