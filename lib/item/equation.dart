import 'package:parabola_guide/item/item.dart';

class Equation extends Item {
    final List<double> value;
    
    Equation(this.value) : super.type(ItemType.equation);
    Equation.type(ItemType type, this.value) : super.type(type);
}