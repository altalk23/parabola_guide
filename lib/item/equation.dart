import 'package:parabola_guide/item/item_type.dart';
import 'package:parabola_guide/item/item.dart';
import 'package:parabola_guide/extensions.dart';

class Equation extends Item {
    Equation(List<double> values) : super.type(ItemType.equation, values);
    
    Equation.type(ItemType type, List<double> values) : super.type(type, values);
    
    @override
    String toString() {
        StringBuffer buffer = StringBuffer();
        values.asMap().forEach((key, value) {
            if (value != 0) {
                if (key == 0) buffer.write(value.coefficentString().addXDegree(values.length-key-1));
                else if (key == values.length-1)buffer.write(value.constantString().addXDegree(0));
                else buffer.write(value.continueCoefficentString().addXDegree(values.length-key-1));
            }
        });
        return buffer.toString();
    }
}