import 'package:parabola_guide/item/equation.dart';

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
        else if (index <= 8) return 3;
        return 0;
    }
}

void main() {
    Equation a = Equation([346, 24, 12123]);
    print(a);
}