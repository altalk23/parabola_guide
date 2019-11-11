
class Entry {
    Entry(this.title, [this.children = const <Entry>[], this.depth, this.id]);
    
    final String title;
    final List<Entry> children;
    int depth;
    int id;
}

int _id = 0;
final List<Entry> categories = <Entry>[
    Entry(
        'Find roots from given equation in',
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
                '3 unknowns from given',
                <Entry>[
                    Entry('Two roots and another point'),
                    Entry('Vertex and another point'),
                    Entry('One root and two other points'),
                    Entry('Y-intercept and two other points'),
                    Entry('Three points'),
                ],
            ),
            Entry(
                '2 unknowns from given',
                <Entry>[
                    Entry('Two roots'),
                    Entry('Vertex'),
                    Entry('Two points'),
                ],
            ),
            Entry(
                '1 unknown from given',
                <Entry>[
                    Entry('One point'),
                ],
            ),
        ],
    ),
    Entry(
        'Find intersections of',
        <Entry>[
            Entry('One line and one parabola'),
            Entry('Two parabolas'),
        ],
    ),
    Entry(
        'Find the tangency of a parabola and line if',
        <Entry>[
            Entry('Line has one unknown'),
            Entry('Parabola has one unknown'),
        ],
    ),
    Entry(
        'Sketch the graph from given equation in',
        <Entry>[
            Entry('Factored form'),
            Entry('Vertex form'),
            Entry('Standard form'),
        ],
    ),
    Entry(
        'Given an equation, find its',
        <Entry>[
            Entry('Axis of symmetry'),
            Entry('Maximum / Minimum'),
            Entry('Sum and product of roots'),
        ],
    ),
    Entry(
        'Using discriminant, comment on its',
        <Entry>[
            Entry('Roots'),
            Entry('Arms'),
        ],
    ),
    
].map(_getDepth).toList();

Entry _getDepth(Entry entry) {
    _id++;
    entry.depth ??= 0;
    entry.children.forEach((child) {
        child.depth = entry.depth + 1;
    });
    return Entry(entry.title, entry.children.map(_getDepth).toList(), entry.depth, _id);
}