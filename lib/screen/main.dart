import 'package:flutter/material.dart';
import 'package:parabola_guide/screen/scr1.dart';
import 'package:parabola_guide/widget/card.dart';
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
                                AppCard(
                                    onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Screen1(),
                                            ),
                                        );
                                    },
                                    child: Text('Card 1'),
                                    color: Color(0xFFFF88AA),
                                ),
                                AppCard(
                                    child: Text('Card 2'),
                                    color: Color(0xFF88AAFF),
                                ),
                            ],
                        ),
                    ),
                    Expanded(
                        child: Flex(
                            direction: Axis.horizontal,
                            children: <Widget>[
                                AppCard(
                                    child: Text('Card 3'),
                                    color: Color(0xFFEE77FF),
                                ),
                                AppCard(
                                    child: Text('Card 4'),
                                    color: Color(0xFFEEFF77),
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