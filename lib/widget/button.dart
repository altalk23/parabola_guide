import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
    const AppButton({Key key, @required this.onPressed, this.child}) : super(key: key);
    final VoidCallback onPressed;
    final Widget child;
    
    @override
    Widget build(BuildContext context) {
        return Material(
            color: Colors.transparent,
            child: InkWell(
                customBorder: StadiumBorder(),
                highlightColor: Color(0x44DDEEEE),
                onTap: onPressed,
                child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: child,
                ),
            ),
        
        );
    }
}