// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:parabola_guide/category_entry.dart';
import 'package:parabola_guide/widget/scaffold.dart';

class ExpansionList extends StatelessWidget {
    final List<Entry> entry;
    final Widget Function(String) title;
    final Widget Function(String) child;
    
    const ExpansionList({Key key, this.entry, this.title, this.child,}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return ListView.builder(
            itemBuilder: (BuildContext context, int index) =>
              EntryItem(entry[index], title, child),
            itemCount: entry.length,
        );
    }
}

typedef WidgetWithString = Widget Function(String);

class EntryItem extends StatelessWidget {
    const EntryItem(this.entry, this.title, this.child);
    
    final Widget Function(String) child;
    final Widget Function(String) title;

    final Entry entry;
    
    Widget _buildTiles(Entry root) {
        if (root.children.isEmpty) return child(root.title);
        return ExpansionTile(
            key: PageStorageKey<Entry>(root),
            title: title(root.title),
            children: root.children.map(_buildTiles).toList(),
        );
    }
    
    @override
    Widget build(BuildContext context) {
        return _buildTiles(entry);
    }
}