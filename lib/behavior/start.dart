import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:parabola_guide/custom_icons_icons.dart';

Widget startFloatingActionButton() =>
  SpeedDial(
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
            label: 'Find root',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print('FIRST CHILD')
          ),
          SpeedDialChild(
              child: Icon(CustomIcons.equation),
              backgroundColor: Colors.blue,
              label: 'Find equation',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => print('SECOND CHILD'),
          ),
          SpeedDialChild(
              child: Icon(CustomIcons.variable),
              backgroundColor: Colors.green,
              label: 'Find variable',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => print('THIRD CHILD'),
          ),
      ],
  );