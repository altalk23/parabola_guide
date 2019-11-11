import 'package:flutter/material.dart';
import 'package:parabola_guide/widget/scaffold.dart';

class MainScreen extends StatefulWidget {
    @override
    _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
    
    PageController pageController = PageController();
    
    @override
    Widget build(BuildContext context) {
        return AppScaffold(
            appBar: AppBar(
                title: Text('Parabola Guide'),
            ),
            body: SafeArea(
                child: PageView(
                    controller: pageController,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                        CardScreen(),
                        AboutScreen(),
                    ],
                ),
            ),
        );
    }
}

class CardScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Container(
            padding: const EdgeInsets.all(8),
            child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                    Expanded(
                        child: Flex(
                            direction: Axis.horizontal,
                            children: <Widget>[
                                Expanded(
                                    child: Container(
                                        padding: const EdgeInsets.all(8),
                                        child: Card(
                                            child: Center(
                                                child: Text('Card 1'),
                                            ),
                                        ),
                                    ),
                                ),
                                Expanded(
                                    child: Container(
                                        padding: const EdgeInsets.all(8),
                                        child: Card(
                                            child: Center(
                                                child: Text('Card 2'),
                                            ),
                                        ),
                                    ),
                                ),
                            ],
                        ),
                    ),
                    Expanded(
                        child: Flex(
                            direction: Axis.horizontal,
                            children: <Widget>[
                                Expanded(
                                    child: Container(
                                        padding: const EdgeInsets.all(8),
                                        child: Card(
                                            child: Center(
                                                child: Text('Card 3'),
                                            ),
                                        ),
                                    ),
                                ),
                                Expanded(
                                    child: Container(
                                        padding: const EdgeInsets.all(8),
                                        child: Card(
                                            child: Center(
                                                child: Text('Card 4'),
                                            ),
                                        ),
                                    ),
                                ),
                            ],
                        ),
                    ),
                ],
            ),
        );
    }
}

class AboutScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Container();
    }
}