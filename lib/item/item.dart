import 'package:parabola_guide/item/quadratic_vertex.dart';
import 'package:parabola_guide/item/item_type.dart';

class Item {
    ItemType type;
    
    Item() : this.type = ItemType.item;
    
    Item.type(this.type);
    
    @override
    String toString() {
        return '[$type]';
    }
}
