import 'package:parabola_guide/item/item.dart';

class Constant extends Item {
    final double value;
    
    Constant(this.value) : super.type(ItemType.constant);
}