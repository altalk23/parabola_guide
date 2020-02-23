import 'dart:collection';

import 'package:parabola_guide/item/item.dart';
import 'package:parabola_guide/item/item_type.dart';
import 'package:parabola_guide/solution/helper.dart';
import 'package:parabola_guide/solution/type.dart';

class Solver {
    final List<Item> items;
    SolverHelper helper;
    
    Solver(this.items) {
        HashSet<ItemType> type = HashSet.from(items.map((e) => e.type));
        SolutionType.values.forEach((element) {
            print(element);
            print(element.isThis(type));
            if (element.isThis(type)) {
                helper = SolverHelper(element, items);
            }
        });
    }
    
    String solve() {
        return helper.solve();
    }
}