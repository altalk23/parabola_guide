import 'package:parabola_guide/item/item.dart';

class Constant extends Item {
    final int value;
    
    Constant(this.value) : super.type(ItemType.constant);
}