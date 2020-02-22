import 'package:parabola_guide/item/equation.dart';
import 'package:parabola_guide/item/item.dart';

class FactoredForm extends Equation {
    final double a;
    final double x1;
    final double x2;
    FactoredForm(this.a, this.x1, this.x2) : super.type(ItemType.quadraticFactored, [a * x1 * x2, -a * x1 - a * x2, a]);
    
    get b => -a * x1 - a * x2;
    get c => a * x1 * x2;
    
}