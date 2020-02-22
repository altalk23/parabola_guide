import 'package:parabola_guide/item/item.dart';

const String superscripts = '⁰¹²³⁴⁵⁶⁷⁸⁹';
extension on int {
    String toSuperscriptString() {
        List<String> normal = this.toString().split('');
        StringBuffer buffer = StringBuffer();
        normal.forEach((element) {
            buffer.write(superscripts[int.parse(element)]);
        });
        return buffer.toString();
    }
}

class Equation extends Item {
    final List<double> values;
    
    Equation(this.values) : super.type(ItemType.equation);
    
    Equation.type(ItemType type, this.values) : super.type(type);
    
    @override
    String toString() {
        StringBuffer buffer = StringBuffer();
        Map<int, double> reverse = values.reversed.toList().asMap();
        reverse.forEach((key, value) {
            if (key == 0) buffer.write(value < 0 ? '-' : '');
            else buffer.write(value < 0 ? ' - ' : ' + ');
            if (value.abs() != 1) buffer.write('$value');
            if (key < values.length-1) buffer.write('x');
            if (key < values.length-2) buffer.write('${(values.length-key-1).toSuperscriptString()}');
        });
        return buffer.toString();
    }
}