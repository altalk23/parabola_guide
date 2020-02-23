import 'dart:collection';

import 'package:parabola_guide/item/item.dart';
import 'package:parabola_guide/item/item_type.dart';
import 'package:parabola_guide/solution/type.dart';

class Solver {
    final List<Item> items;
    
    Solver(this.items) {
        HashSet<ItemType> type = HashSet.from(items);
        SolutionType.values.forEach((element) {
            if (element.isThis(type)) {
                switch (element) {
                  case SolutionType.FindRootsFromFactoredForm:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.FindRootsFromVertexForm:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.FindRootsFromStandardFormUsingFactoring:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.FindRootsFromStandardFormUsingCompletingTheSquare:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.FindRootsFromStandardFormUsingDiscriminant:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.FindSumAndProductOfRoots:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.FindVertexOfEquation:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.FindEquationWithGivenTwoRootsAndOnePoint:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.FindEquationWithGivenVertexAndOnePoint:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.FindEquationWithGivenOneRootAndTwoPoints:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.FindEquationWithGivenThreePoints:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.FindDiscriminantOfEquation:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.FindIntersectionsOfParabolaAndLine:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.FindIntersectionsOfTwoParabolas:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.SketchTheVertexFormLabelingImportantPoints:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.SketchTheFactoredFormLabelingImportantPoints:
                    // TODO: Handle this case.
                    break;
                  case SolutionType.FindSumOfRootsWithGivenVertex:
                    // TODO: Handle this case.
                    break;
                }
            }
        });
    }
}