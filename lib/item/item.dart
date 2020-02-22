class Item {
    ItemType type;
    Item() : this.type = ItemType.item;
    Item.type(this.type);
}

enum ItemType {
    constant,
    point,
    vertex,
    root,
    line,
    equation,
    factoredForm,
    standardForm,
    vertexForm,
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

