import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parabola_guide/item/equation.dart';
import 'package:parabola_guide/item/point.dart';
import 'package:parabola_guide/item/item_type.dart';
import 'package:parabola_guide/screen/input.dart';
import 'package:tuple/tuple.dart';

class FunctionPainter extends CustomPainter {
    Random random = Random();
    double ws = -10,
      we = 10,
      hs = -10,
      he = 10;
    double density = 100;

    Tuple2<double, double> align(Tuple2 tuple, Size size) {
        double wst = (size.width) / (we - ws);
        double hst = (size.height) / (he - hs);
        return Tuple2(
            tuple.item1 * wst + (wst * -ws),
            size.height - (tuple.item2 * hst + (hst * -hs)),
        );
    }
    
    FunctionPainter();
    
    @override
    void paint(Canvas canvas, Size size) {
        Paint paint = Paint();
        paint.style = PaintingStyle.stroke;
        paint.strokeWidth = 2;
        
        Path path = Path();
        Tuple2<double, double> tuple;
        
        paint.color = Color(0xFF888888);
        tuple = align(Tuple2(0, hs), size);
        path.moveTo(tuple.item1, tuple.item2);
        tuple = align(Tuple2(0, he), size);
        path.lineTo(tuple.item1, tuple.item2);
        tuple = align(Tuple2(ws, 0), size);
        path.moveTo(tuple.item1, tuple.item2);
        tuple = align(Tuple2(we, 0), size);
        path.lineTo(tuple.item1, tuple.item2);
        canvas.drawPath(path, paint);
        
        paint.strokeWidth = 4;
        itemData.forEach((item) {
            switch (item.type) {
                case ItemType.constant:
                    break;
                case ItemType.point:
                    paintPoint(item, canvas, size);
                    break;
                case ItemType.vertex:
                    paintPoint(item, canvas, size);
                    break;
                case ItemType.root:
                    paintPoint(item, canvas, size);
                    break;
                case ItemType.line:
                    paintEquation(item, canvas, size);
                    break;
                case ItemType.quadraticFactored:
                    paintEquation(item, canvas, size);
                    break;
                case ItemType.quadraticStandard:
                    paintEquation(item, canvas, size);
                    break;
                case ItemType.quadraticVertex:
                    paintEquation(item, canvas, size);
                    break;
                case ItemType.equation:
                    paintEquation(item, canvas, size);
                    break;
                case ItemType.item:
                    break;
            }
        });
    }
    
    void paintEquation(Equation eq, Canvas canvas, Size size) {
        Paint paint = Paint();
        paint.style = PaintingStyle.stroke;
        paint.strokeWidth = 2;
        paint.color = Color.fromARGB(255, random.nextInt(192), random.nextInt(192), random.nextInt(192));
        
        Path path = Path();
        Tuple2<double, double> tuple;
        
        for (double d = ws; d <= we; d += (we - ws) / density) {
            tuple = align(Tuple2(d, eq.f(d)), size);
            if (d == ws)
                path.moveTo(tuple.item1, tuple.item2);
            else
                path.lineTo(tuple.item1, tuple.item2);
        }
        canvas.drawPath(path, paint);
    }
    
    void paintPoint(Point p, Canvas canvas, Size size) {
        Paint paint = Paint();
        paint.style = PaintingStyle.stroke;
        paint.strokeWidth = 4;
        paint.color = Color.fromARGB(255, random.nextInt(192), random.nextInt(192), random.nextInt(192));
    
        Tuple2 tuple = align(Tuple2(p.x, p.y), size);
        canvas.drawCircle(Offset(tuple.item1, tuple.item2), 2, paint);
    }
    
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
        return true;
    }
}