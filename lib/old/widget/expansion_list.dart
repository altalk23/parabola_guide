import 'package:flutter/material.dart';
import 'package:parabola_guide/old/category_entry.dart';

class ExpansionList extends StatelessWidget {
    final List<Entry> entry;
    final Widget Function(String, int) title;
    final Widget Function(String, int) child;
    
    const ExpansionList({Key key, this.entry, this.title, this.child,}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
                return EntryItem(entry[index], title, child);
            },
            itemCount: entry.length,
        );
    }
}

typedef WidgetWithString = Widget Function(String);

class EntryItem extends StatelessWidget {
    const EntryItem(this.entry, this.title, this.child);
    
    final Widget Function(String, int) child;
    final Widget Function(String, int) title;
    
    final Entry entry;
    
    Widget _buildTiles(Entry root) {
        if (root.children.isEmpty) {
            return Padding(
                padding: EdgeInsets.only(left: 16.0 * (root.depth - 1)),
                child: child(root.title, root.id),
            );
        }
        return ExpansionTile(
            key: PageStorageKey<Entry>(root),
            title: Padding(
                padding: EdgeInsets.only(left: 16.0 * root.depth),
                child: Material(
                  color: Colors.transparent,
                  child: title(root.title, root.id),
                ),
            ),
            children: root.children.map(_buildTiles).toList(),
        );
    }
    
    @override
    Widget build(BuildContext context) {
        return _buildTiles(entry);
    }
}