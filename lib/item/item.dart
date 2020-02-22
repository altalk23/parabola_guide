import 'package:parabola_guide/item/quadratic_vertex.dart';
import 'package:parabola_guide/item/item_type.dart';

class Item {
    ItemType type;
    final List<double> values;

    Item(this.values) : this.type = ItemType.item;
    
    Item.type(this.type, this.values);
    
    @override
    String toString() {
        return '$values';
    }
}
