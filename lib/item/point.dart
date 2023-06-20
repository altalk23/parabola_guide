import 'package:parabola_guide/item/item_type.dart';
import 'package:parabola_guide/item/item.dart';

class Point extends Item {
    final double x;
    final double y;
    
    Point(this.x, this.y) : super.type(ItemType.point, [x, y]);
    
    Point.type(ItemType type, this.x, this.y) : super.type(type, [x, y]);
    
    @override
    String toString() {
        return '($x, $y)';
    }
}