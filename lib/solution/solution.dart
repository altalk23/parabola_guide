import 'dart:collection';

import 'package:parabola_guide/item/item.dart';
import 'package:parabola_guide/item/item_type.dart';
import 'package:parabola_guide/solution/helper.dart';
import 'package:parabola_guide/solution/type.dart';

class Solver {
    final List<Item> items;
    List<SolverHelper> helper = List<SolverHelper>();
    
    Solver(this.items) {
        List<ItemType> type = items.map((e) => e.type).toList();
        SolutionType.values.forEach((element) {
            if (element.isThis(type)) {
                helper.add(SolverHelper(element, items));
            }
        });
    }
    
    List<String> solve() {
        return List.generate(helper.length, (index) => helper[index].solve());
    }
}