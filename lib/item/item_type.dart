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

