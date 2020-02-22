import 'package:parabola_guide/item/equation.dart';
import 'package:parabola_guide/item/item.dart';

class StandardForm extends Equation {
    final double a;
    final double b;
    final double c;
        StandardForm(this.a, this.b, this.c) : super.type(ItemType.quadraticStandard, [c, b, a]);
}