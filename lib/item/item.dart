import 'package:parabola_guide/item/equation.dart';
import 'package:parabola_guide/item/quadratic_factored.dart';
import 'package:parabola_guide/item/quadratic_standard.dart';
import 'package:parabola_guide/item/quadratic_vertex.dart';

class Item {
    ItemType type;
    
    Item() : this.type = ItemType.item;
    
    Item.type(this.type);
    
    @override
    String toString() {
        return '[$type]';
    }
}

enum ItemType {
    constant,
    point,
    vertex,
    root,
    line,
    quadraticFactored,
    quadraticStandard,
    quadraticVertex,
    equation,
    item,
}

extension on ItemType {
    int dataCount() {
        int index = ItemType.values.indexOf(this);
        if (index <= 0)
            return 1;
        else if (index <= 4)
            return 2;
        else if (index <= 7) return 3;
        else if (index <= 8) return -1;
        return 0;
    }
}

void main() {
    Item a = QuadraticVertex(3, -23, 23);
    print(a);
}