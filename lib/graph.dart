import 'dart:math';

import 'package:flutter/material.dart';

import 'equation.dart';


class FunctionPainter extends CustomPainter {
    Random random = Random();
    List<Equation> equation = List<Equation>();
    double ws = -10,
      we = 10,
      hs = -10,
      he = 10;
    double density = 100;
    
    Point align(Point point, Size size) {
        double wst = (size.width) / (we - ws);
        double hst = (size.height) / (he - hs);
        return Point(
            point.x * wst + (wst * -ws),
            size.height - ((point.y) * hst + (hst * -hs)),
        );
    }
    
    double function(Equation eq, double d) => eq.a * d * d + eq.b * d + eq.c;
    
    FunctionPainter();
    
    void addEquation(List<Equation> eq) {
        equation.add(Equation.fromStandard(2, 2, 2));
        
        eq.forEach((e) {
            equation.add(e);
        });
    }
    
    @override
    void paint(Canvas canvas, Size size) {
        var paint = Paint();
        paint.style = PaintingStyle.stroke;
        paint.strokeWidth = 2;
        
        Path path = Path();
        Point p;
        
        paint.color = Color(0xFF888888);
        p = align(Point(0, hs), size);
        path.moveTo(p.x, p.y);
        p = align(Point(0, he), size);
        path.lineTo(p.x, p.y);
        p = align(Point(ws, 0), size);
        path.moveTo(p.x, p.y);
        p = align(Point(we, 0), size);
        path.lineTo(p.x, p.y);
        canvas.drawPath(path, paint);
        
        paint.strokeWidth = 4;
        equation.forEach((eq) {
            path = Path();
            paint.color = Color.fromARGB(255, random.nextInt(192), random.nextInt(192), random.nextInt(192));
            for (double d = ws; d <= we; d += (we - ws) / density) {
                p = align(Point(d, function(eq, d)), size);
                if (d == ws)
                    path.moveTo(p.x, p.y);
                else
                    path.lineTo(p.x, p.y);
            }
            canvas.drawPath(path, paint);
        });
    }
    
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
        return true;
    }
}