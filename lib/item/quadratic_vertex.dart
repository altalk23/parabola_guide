import 'package:parabola_guide/item/equation.dart';
import 'package:parabola_guide/item/item.dart';
import 'package:parabola_guide/extensions.dart';

class QuadraticVertex extends Equation {
    final double a;
    final double h;
    final double k;
    QuadraticVertex(this.a, this.h, this.k) : super.type(ItemType.quadraticVertex, [a * h * h + k,-2 * a * h, a]);
    
    get b => -2 * a * h;
    get c => a * h * h + k;

    @override
    String toString() {
        StringBuffer buffer = StringBuffer();
        buffer.write(a.coefficentString());
        buffer.write(h.factorString().addDegree(2));
        buffer.write(k.constantString());
        return buffer.toString();
    }
}