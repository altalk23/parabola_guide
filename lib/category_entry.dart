class Entry {
    Entry(this.title, [this.children = const <Entry>[]]);
    Entry.withDepth(this.title, this.depth, [this.children = const <Entry>[]]);
    
    final String title;
    final List<Entry> children;
    int depth;
}

final List<Entry> categories = <Entry>[
    Entry(
        'Find roots from given',
        <Entry>[
            Entry('Factored form'),
            Entry('Vertex form'),
            Entry(
                'Standard form using',
                <Entry>[
                    Entry('Factoring'),
                    Entry('Completing the square'),
                    Entry('Discriminant'),
                ],
            ),
        ],
    ),
    Entry(
        'Find equation with',
        <Entry>[
            Entry(
                '3 unknowns with given',
                <Entry>[
                    Entry('Two roots and another point'),
                    Entry('Vertex and another point'),
                    Entry('One root and two other points'),
                    Entry('Y-intercept and two other points'),
                    Entry('Three points'),
                ],
            ),
            Entry(
                '2 unknowns with given',
                <Entry>[
                    Entry('Two roots'),
                    Entry('Vertex'),
                    Entry('Two points'),
                ],
            ),
            Entry(
                '1 unknown with given',
                <Entry>[
                    Entry('One point'),
                ],
            ),
        ],
    ),
    Entry(
        'Find intersections',
        <Entry>[
            Entry('Section C0'),
            Entry('Section C1'),
            Entry(
                'Section C2',
                <Entry>[
                    Entry('Item C2.0'),
                    Entry('Item C2.1'),
                    Entry('Item C2.2'),
                ],
            ),
        ],
    ),
].map(_getDepth).toList();

Entry _getDepth(Entry entry) {
    entry.depth ??= 0;
    print(entry.title);
    print(entry.depth);
    entry.children.forEach((child) {
        child.depth = entry.depth + 1;
    });
    return Entry.withDepth(entry.title, entry.depth, entry.children.map(_getDepth).toList());
}