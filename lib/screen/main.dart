import 'package:flutter/material.dart';
import 'package:parabola_guide/category_entry.dart';
import 'package:parabola_guide/widget/expansion_list.dart';
import 'package:parabola_guide/widget/list_tile.dart';
import 'package:parabola_guide/widget/scaffold.dart';

class MainScreen extends StatefulWidget {
    @override
    _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
    @override
    Widget build(BuildContext context) {
        return AppScaffold(
            appBar: AppBar(
                title: Text('Parabola Guide'),
            ),
            body: Center(
                child: ExpansionList(
                    entry: categories,
                    child: (String title) =>
                      AppListTile(
                          title: Text(title),
                          onTap: () => print('a'),
                      ),
                    title: (String title) =>
                      Material(
                          color: Colors.transparent,
                          child: Text(title),
                      ),
                ),
            ),
        );
    }
}