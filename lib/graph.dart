import 'dart:math';

import 'package:flutter/material.dart';

class FunctionPainter extends CustomPainter {
    final double a, b, c;
    double _a, _b, _c;
    double ws = -10, we = 10, hs = -10, he = 100;
    double density = 100;
    
    Point align(Point point, Size size) {
        double wst = (size.width)/(we-ws);
        double hst = (size.height)/(he-hs);
        return Point(
            point.x * wst + (wst*-ws),
            size.height - ((point.y) * hst + (hst*-hs)),
        );
    }
    double function(double d) => _a*d*d+_b*d+_c;
    
    FunctionPainter(this.a, this.b, this.c) {
        if (c.isNaN) {
            _a = 0;
            _b = a;
            _c = b;
        } else {
            _a = a;
            _b = b;
            _c = c;
        }
    }
    
    @override
    void paint(Canvas canvas, Size size) {
        var paint = Paint();
        paint.color = Colors.green[800];
        paint.style = PaintingStyle.stroke;
        paint.strokeWidth = 5.0;
        
        var path = Path();
        Point p;
        for (double d = ws; d <= we; d += (we-ws)/density) {
            p = align(Point(d, function(d)), size);
            print(p);
            path.lineTo(p.x, p.y);
        }
        canvas.drawPath(path, paint);
    }
    
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
        return true;
    }
}