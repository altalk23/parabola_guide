import 'package:parabola_guide/item/equation.dart';
import 'package:parabola_guide/item/item.dart';
import 'package:parabola_guide/extensions.dart';

class QuadraticFactored extends Equation {
    final double a;
    final double x1;
    final double x2;
    QuadraticFactored(this.a, this.x1, this.x2) : super.type(ItemType.quadraticFactored, [a * x1 * x2, -a * x1 - a * x2, a]);
    
    get b => -a * x1 - a * x2;
    get c => a * x1 * x2;

    @override
    String toString() {
        StringBuffer buffer = StringBuffer();
        buffer.write(a.coefficentString());
        if (x1 == x2) buffer.write(x1.factorString().addDegree(2));
        else {
            buffer.write(x1.factorString());
            buffer.write(x2.factorString());
        }
        return buffer.toString();
    }
}