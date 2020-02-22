import 'dart:collection';

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

HashMap<ItemType, String> typeName = HashMap.from({
    ItemType.constant: 'Constant',
    ItemType.point: 'Point',
    ItemType.vertex: 'Vertex',
    ItemType.root: 'Root',
    ItemType.line: 'Line',
    ItemType.quadraticFactored: 'Factored Form',
    ItemType.quadraticStandard: 'Standard Form',
    ItemType.quadraticVertex: 'Vertex Form',
    ItemType.equation: 'Polynomial',
    ItemType.item: 'Item'
});

extension NameAndCount on ItemType {
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
    
    String name() => typeName[this];
}

