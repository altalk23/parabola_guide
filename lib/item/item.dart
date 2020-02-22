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

void main() {
    Item a = QuadraticVertex(3, -23, 23);
    print(a);
}