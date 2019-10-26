import 'package:flutter/material.dart';
import 'package:parabola_guide/category_entry.dart';
import 'package:parabola_guide/widget/expansion_list.dart';
import 'package:parabola_guide/widget/scaffold.dart';

class MainScreen extends StatefulWidget {
    @override
    _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
    int _counter = 0;
    
    @override
    Widget build(BuildContext context) {
        return AppScaffold(
            appBar: AppBar(
                title: Text('Title'),
            ),
            body: Center(
                child: ExpansionList(
                    entry: categories,
                    child: (String title) =>
                      ListTile(
                          title: Text(title),
                      ),
                    title: (String title) => Text(title),
                ),
            ),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                    setState(() {
                        _counter++;
                    });
                },
            ),
        );
    }
}