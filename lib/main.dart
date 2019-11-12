import 'package:flutter/material.dart';
import 'package:parabola_guide/screen/main.dart';
import 'package:tinycolor/tinycolor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              backgroundColor: Color(0xFFEEFFFF),
              primarySwatch: MaterialColor(
                  0xFF55CC77,
                  <int, Color>{
                      50: TinyColor(Color(0xFF55CC77)).lighten(40).color,
                      100: TinyColor(Color(0xFF55CC77)).lighten(36).color,
                      200: TinyColor(Color(0xFF55CC77)).lighten(27).color,
                      300: TinyColor(Color(0xFF55CC77)).lighten(18).color,
                      400: TinyColor(Color(0xFF55CC77)).lighten(9).color,
                      500: Color(0xFF55CC77),
                      600: TinyColor(Color(0xFF55CC77)).darken(9).color,
                      700: TinyColor(Color(0xFF55CC77)).darken(18).color,
                      800: TinyColor(Color(0xFF55CC77)).darken(27).color,
                      900: TinyColor(Color(0xFF55CC77)).darken(36).color,
                  },
              ),
              accentColor: Color(0xFF7733AA),
              cardTheme: CardTheme(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(8),
                      ),
                  ),
              ),
              fontFamily: 'Comfortaa'
            ),
            home: MainScreen(),
        );
    }
}

/*class AppThemeData {
    final Color backgroundColor;
    final MaterialColor primarySwatch;
    final Color accentColor;
    final Color highlightColor;
    final Color splashColor;
    final String fontFamily;
    final CardTheme cardTheme;
    
    AppThemeData.raw({
        this.backgroundColor,
        this.primarySwatch,
        this.accentColor,
        this.highlightColor,
        this.splashColor,
        this.fontFamily,
        this.cardTheme,
    });
    
    factory AppThemeData({
        Color backgroundColor,
        MaterialColor primarySwatch,
        Color accentColor,
        Color highlightColor,
        Color splashColor,
        String fontFamily,
        CardTheme cardTheme,
    }) {
        backgroundColor ??= Color(0xFFEEFFFF);
        primarySwatch ??= MaterialColor(
            0xFF55CC77,
            <int, Color>{
                50: TinyColor(Color(0xFF55CC77))
                  .lighten(40)
                  .color,
                100: TinyColor(Color(0xFF55CC77))
                  .lighten(36)
                  .color,
                200: TinyColor(Color(0xFF55CC77))
                  .lighten(27)
                  .color,
                300: TinyColor(Color(0xFF55CC77))
                  .lighten(18)
                  .color,
                400: TinyColor(Color(0xFF55CC77))
                  .lighten(9)
                  .color,
                500: Color(0xFF55CC77),
                600: TinyColor(Color(0xFF55CC77))
                  .darken(9)
                  .color,
                700: TinyColor(Color(0xFF55CC77))
                  .darken(18)
                  .color,
                800: TinyColor(Color(0xFF55CC77))
                  .darken(27)
                  .color,
                900: TinyColor(Color(0xFF55CC77))
                  .darken(36)
                  .color,
            },
        );
        accentColor ??= Color(0xFF7733AA);
        cardTheme ??= CardTheme(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(8),
                ),
            ),
        );
        highlightColor ??= Color(0x33DDDDDD);
        splashColor ??= Color(0x33FFFFFF);
        fontFamily ??= 'Comfortaa';
        
        return AppThemeData(
            backgroundColor: backgroundColor,
            primarySwatch: primarySwatch,
            accentColor: accentColor,
            highlightColor: highlightColor,
            splashColor: splashColor,
            fontFamily: fontFamily,
            cardTheme: cardTheme,
        );
    }
    
    ThemeData toThemeData() {
        return ThemeData(
            backgroundColor: backgroundColor,
            primarySwatch: primarySwatch,
            accentColor: accentColor,
            highlightColor: highlightColor,
            splashColor: splashColor,
            fontFamily: fontFamily,
            cardTheme: cardTheme,
        );
    }
}*/