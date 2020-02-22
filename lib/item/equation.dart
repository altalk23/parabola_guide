import 'package:parabola_guide/item/item.dart';

class Equation extends Item {
    Equation() : super.type(ItemType.equation);
    Equation.type(ItemType type) : super.type(type);
}