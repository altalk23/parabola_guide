import 'package:parabola_guide/item/equation.dart';
import 'package:parabola_guide/item/item.dart';

class VertexForm extends Equation {
    final double a;
    final double h;
    final double k;
    VertexForm(this.a, this.h, this.k) : super.type(ItemType.quadraticVertex, [a * h * h + k,-2 * a * h, a]);
    
    get b => -2 * a * h;
    get c => a * h * h + k;
}