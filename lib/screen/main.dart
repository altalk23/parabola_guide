import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:parabola_guide/behavior/start.dart';

import '../custom_icons_icons.dart';

class MainScreen extends StatefulWidget {
    @override
    _MainScreenState createState() => _MainScreenState();
}


class _MainScreenState extends State<MainScreen> {
    List<String> data = [
        'Lorem ipsum',
    ];
    
    Widget startFloatingActionButton() =>
      SpeedDial(
          size: 70,
          // both default to 16
          marginRight: 18,
          marginBottom: 20,
          // this is ignored if animatedIcon is non null
          child: Icon(Icons.edit),
          //visible: _dialVisible,
          // If true user is forced to close dial manually
          // by tapping main button and overlay is not rendered.
          closeManually: false,
          curve: Curves.bounceIn,
          overlayColor: Colors.black,
          overlayOpacity: 0.5,
          onOpen: () => print('OPENING DIAL'),
          onClose: () => print('DIAL CLOSED'),
          tooltip: 'Speed Dial',
          heroTag: 'speed-dial-hero-tag',
          elevation: 8.0,
          shape: CircleBorder(),
          children: [
              SpeedDialChild(
                child: Icon(CustomIcons.root),
                backgroundColor: Colors.red,
                label: 'Add root',
                labelStyle: TextStyle(fontSize: 18.0),
                onTap: () {
                    setState(() {
                        data.add('Root');
                    });
                    print('FIRST CHILD');
                }
              ),
              SpeedDialChild(
                  child: Icon(CustomIcons.equation),
                  backgroundColor: Colors.blue,
                  label: 'Add equation',
                  labelStyle: TextStyle(fontSize: 18.0),
                  onTap: () {
                      setState(() {
                          data.add('Equation');
                      });
                      print('SECOND CHILD');
                  },
              ),
              SpeedDialChild(
                  child: Icon(CustomIcons.variable),
                  backgroundColor: Colors.green,
                  label: 'Add variable',
                  labelStyle: TextStyle(fontSize: 18.0),
                  onTap: () {
                      setState(() {
                          data.add('Variable');
                      });
                      print('THIRD CHILD');
                  },
              ),
          ],
      );
    
    @override
    Widget build(BuildContext context) {
        ThemeData theme = Theme.of(context);
        return Scaffold(
            appBar: AppBar(),
            body: ListView.builder(
                itemBuilder: (context, index) {
                    return Card(
                        child: Container(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                                data[index],
                                style: theme.textTheme.headline,
                            ),
                        ),
                    );
                },
                itemCount: data.length,
            ),
            floatingActionButton: startFloatingActionButton(),
        );
    }
}
