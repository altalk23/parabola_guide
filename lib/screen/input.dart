import 'package:flutter/material.dart';
import 'package:parabola_guide/item/item.dart';
import 'package:parabola_guide/item/item_type.dart';
import 'package:parabola_guide/extensions.dart';

List<Item> itemData = [];

class InputScreen extends StatefulWidget {
    @override
    _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
    int selected = -1;
    ItemType selectedType = ItemType.item;
    List<TextEditingController> controller = List<TextEditingController>(3);
    
    void add(BuildContext context) {
    
    }
    
    Widget options(BuildContext context) {
        return DropdownButton<ItemType>(
            value: null,
            hint: Text(selectedType.name()),
            onChanged: (ItemType value) {
                setState(() {
                    selectedType = value;
                });
            },
            items: (ItemType.values).map((e) =>
              DropdownMenuItem<ItemType>(
                  child: Text(e.name()),
                  value: e,
              )),
        
        );
    }
    
    Widget input(BuildContext context) {
        int inputCount = typeName.findKey(selectedType).dataCount();
        List<Widget> inputs;
        if (inputCount >= 3) inputs.add(TextField(controller: controller[2]));
        if (inputCount >= 2) inputs.add(TextField(controller: controller[1]));
        if (inputCount >= 1) inputs.add(TextField(controller: controller[0]));
        return Column(children: inputs,);
    }
    
    Widget items(BuildContext context) {
        return Expanded(
            child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                    return item(context, itemData[index].type.name(), itemData[index].toString(), index);
                },
            ),
        );
    }
    
    ListTile item(BuildContext context, String title, String subtitle, int index) {
        return ListTile(
            title: Card(
                color: index == selected ? Theme
                  .of(context)
                  .primaryColorLight : null,
                child: Column(
                    children: <Widget>[
                        Text(title),
                        Text(subtitle),
                    ],
                ),
            ),
            onTap: () {
                setState(() {
                    selected = index;
                });
                Navigator.pop(context);
            },
        );
    }
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Theme
              .of(context)
              .backgroundColor,
            body: Column(
                children: <Widget>[
                    options(context),
                    input(context),
                    items(context),
                ],
            ),
            floatingActionButton: FloatingActionButton(
                elevation: 8,
                onPressed: () {
                    add(context);
                },
                child: Container(
                    alignment: Alignment(0, 1),
                    child: Image(
                      width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2,
                      image: AssetImage('assets/images/add.png')
                    ),
                ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
    }
}
