import 'package:flutter/material.dart';
import 'package:parabola_guide/item/constant.dart';
import 'package:parabola_guide/item/item.dart';
import 'package:parabola_guide/item/item_type.dart';
import 'package:parabola_guide/extensions.dart';
import 'package:parabola_guide/item/line.dart';
import 'package:parabola_guide/item/point.dart';
import 'package:parabola_guide/item/quadratic_factored.dart';
import 'package:parabola_guide/item/quadratic_standard.dart';
import 'package:parabola_guide/item/quadratic_vertex.dart';
import 'package:parabola_guide/item/root.dart';
import 'package:parabola_guide/item/vertex.dart';

List<Item> itemData = [];

class InputScreen extends StatefulWidget {
    @override
    _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
    int selected = -1;
    ItemType selectedType = ItemType.item;
    List<TextEditingController> controller = List<TextEditingController>.generate(3, (_) => TextEditingController());
    
    void add(BuildContext context) {
        switch (selectedType) {
            case ItemType.constant:
                itemData.add(Constant(
                    controller[0].text.toDouble(),
                ));
                break;
            case ItemType.point:
                itemData.add(Point(
                    controller[0].text.toDouble(),
                    controller[1].text.toDouble(),
                ));
                break;
            case ItemType.vertex:
                itemData.add(Vertex(
                    controller[0].text.toDouble(),
                    controller[1].text.toDouble(),
                ));
                break;
            case ItemType.root:
                itemData.add(Root(
                    controller[0].text.toDouble(),
                    controller[1].text.toDouble(),
                ));
                break;
            case ItemType.line:
                itemData.add(Line(
                    controller[0].text.toDouble(),
                    controller[1].text.toDouble(),
                ));
                break;
            case ItemType.quadraticFactored:
                itemData.add(QuadraticFactored(
                    controller[0].text.toDouble(),
                    controller[1].text.toDouble(),
                    controller[2].text.toDouble(),
                ));
                break;
            case ItemType.quadraticStandard:
                itemData.add(QuadraticStandard(
                    controller[0].text.toDouble(),
                    controller[1].text.toDouble(),
                    controller[2].text.toDouble(),
                ));
                break;
            case ItemType.quadraticVertex:
                itemData.add(QuadraticVertex(
                    controller[0].text.toDouble(),
                    controller[1].text.toDouble(),
                    controller[2].text.toDouble(),
                ));
                break;
            case ItemType.equation:
                break;
            case ItemType.item:
                break;
        }
        controller.forEach((element) {
            element.text = '';
        });
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
              )).toList(),
        
        );
    }
    
    Widget input(BuildContext context) {
        int inputCount = selectedType.dataCount();
        List<Widget> inputs = List<Widget>();
        if (inputCount >= 1) inputs.add(TextField(controller: controller[0]));
        if (inputCount >= 2) inputs.add(TextField(controller: controller[1]));
        if (inputCount >= 3) inputs.add(TextField(controller: controller[2]));
        if (inputCount <= 0)
            return Container();
        else
            return Column(children: inputs,);
    }
    
    Widget items(BuildContext context) {
        return Expanded(
            child: ListView.builder(
                itemCount: itemData.length,
                itemBuilder: (BuildContext context, int index) {
                    return item(context, itemData[index].type.name(), itemData[index].toString(), index);
                },
            ),
        );
    }
    
    Widget item(BuildContext context, String title, String subtitle, int index) {
        return Card(
            color: index == selected ? Theme
              .of(context)
              .primaryColorLight : null,
            child: ListTile(
                title: Text(title),
                subtitle: Text(subtitle),
                onTap: () {
                    setState(() {
                        selected = index;
                    });
                },
            ),
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
                    SizedBox(height: 70,),
                    options(context),
                    input(context),
                    items(context),
                ],
            ),
            floatingActionButton: FloatingActionButton(
                elevation: 8,
                onPressed: () {
                    setState(() {
                        add(context);
                    });
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
