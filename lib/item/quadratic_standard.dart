import 'package:parabola_guide/item/equation.dart';
import 'package:parabola_guide/item/item_type.dart';

class QuadraticStandard extends Equation {
    final double a;
    final double b;
    final double c;
    
    QuadraticStandard(this.a, this.b, this.c) : super.type(ItemType.quadraticStandard, [c, b, a]);
}