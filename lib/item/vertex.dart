import 'package:parabola_guide/item/item.dart';
import 'package:parabola_guide/item/point.dart';

class Vertex extends Point {
    Vertex(double x, double y) : super.type(ItemType.vertex, x, y);
}