import 'package:parabola_guide/item/item_type.dart';
import 'package:parabola_guide/item/item.dart';
import 'package:parabola_guide/extensions.dart';

class Equation extends Item {
    final List<double> values;
    
    Equation(this.values) : super.type(ItemType.equation);
    
    Equation.type(ItemType type, this.values) : super.type(type);
    
    @override
    String toString() {
        StringBuffer buffer = StringBuffer();
        Map<int, double> reverse = values.reversed.toList().asMap();
        reverse.forEach((key, value) {
            if (value != 0) {
                if (key == 0) buffer.write(value.coefficentString().addXDegree(values.length-key-1));
                else if (key == values.length-1)buffer.write(value.constantString().addXDegree(0));
                else buffer.write(value.continueCoefficentString().addXDegree(values.length-key-1));
            }
        });
        return buffer.toString();
    }
}