import 'package:flutter/material.dart';
import 'package:parabola_guide/decoration.dart';
import 'package:parabola_guide/item/item.dart';
import 'package:parabola_guide/text_style.dart';
import 'dart:math';

List<Item> itemData = [];

class InputScreen extends StatefulWidget {
    @override
    _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Theme
              .of(context)
              .backgroundColor,
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
    }
}
