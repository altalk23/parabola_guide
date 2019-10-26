import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {
    final Widget title;
    final VoidCallback onTap;

  const AppListTile({Key key, this.title, this.onTap}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return ListTile(
            title: Material(
                color: Colors.transparent,
                child: InkWell(
                    highlightColor: Color(0x44DDEEEE),
                    onTap: onTap,
                    child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: title,
                    ),
                ),
            ),
        );
    }
    
}