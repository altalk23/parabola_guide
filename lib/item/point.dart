import 'package:parabola_guide/item/item.dart';

class Point extends Item {
    Point() : super.type(ItemType.point);
    Point.type(ItemType type) : super.type(type);
}