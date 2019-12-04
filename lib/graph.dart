import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parabola_guide/screen/from_equation_screen.dart';

class FunctionPainter extends CustomPainter {
    Random random = Random();
    final List<Equation> equation;
    List<Equation> _equation = List<Equation>();
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
    
    FunctionPainter(this.equation) {
        equation.forEach((eq) {
            if (eq.c.isNaN) {
                _equation.add(Equation(0, eq.a, eq.b));
            } else {
                _equation.add(Equation(eq.a, eq.b, eq.c));
            }
        });
    }
    
    @override
    void paint(Canvas canvas, Size size) {
        var paint = Paint();
        paint.style = PaintingStyle.stroke;
        paint.strokeWidth = 5.0;
        
        var path = Path();
        Point p;
        bool flag = true;
        _equation.forEach((eq) {
            paint.color = Color.fromARGB(255, random.nextInt(127), random.nextInt(127), random.nextInt(127));
            for (double d = ws; d <= we; d += (we - ws) / density) {
                p = align(Point(d, function(eq, d)), size);
                if (flag) {
                    if (p.y >= 0 && p.y <= size.height) flag = false;
                    path.moveTo(p.x, p.y);
                }
                path.lineTo(p.x, p.y);
            }
            path.moveTo(0, 0);
        });
        canvas.drawPath(path, paint);
    }
    
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
        return true;
    }
}