import 'package:parabola_guide/item/item_type.dart';
import 'package:parabola_guide/item/point.dart';

class Root extends Point {
    Root(double x, double y) : super.type(ItemType.root, x, y);
}