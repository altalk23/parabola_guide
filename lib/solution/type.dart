import 'dart:collection';

import 'package:parabola_guide/item/item_type.dart';

enum SolutionType {
    FindRootsFromFactoredForm,
    FindRootsFromVertexForm,
    FindRootsFromStandardFormUsingFactoring,
    FindRootsFromStandardFormUsingCompletingTheSquare,
    FindRootsFromStandardFormUsingDiscriminant,
    FindSumAndProductOfRoots,
    FindVertexOfEquation,
    FindEquationWithGivenTwoRootsAndOnePoint,
    FindEquationWithGivenVertexAndOnePoint,
    FindEquationWithGivenOneRootAndTwoPoints,
    FindEquationWithGivenThreePoints,
    FindDiscriminantOfEquation,
    FindIntersectionsOfParabolaAndLine,
    FindIntersectionsOfTwoParabolas,
    SketchTheVertexFormLabelingImportantPoints,
    SketchTheFactoredFormLabelingImportantPoints,
    FindSumOfRootsWithGivenVertex,
}

HashMap<SolutionType, List<ItemType>> ingredients = HashMap.from(<SolutionType, List<ItemType>>{
    SolutionType.FindRootsFromFactoredForm: [ItemType.quadraticFactored],
    SolutionType.FindRootsFromVertexForm: [ItemType.quadraticVertex],
    SolutionType.FindRootsFromStandardFormUsingFactoring: [ItemType.quadraticStandard],
    SolutionType.FindRootsFromStandardFormUsingCompletingTheSquare: [ItemType.quadraticStandard],
    SolutionType.FindRootsFromStandardFormUsingDiscriminant: [ItemType.quadraticStandard],
    SolutionType.FindSumAndProductOfRoots: [ItemType.quadraticStandard],
    SolutionType.FindVertexOfEquation:[ItemType.quadraticStandard],
    SolutionType.FindEquationWithGivenTwoRootsAndOnePoint: [ItemType.root, ItemType.root, ItemType.point],
    SolutionType.FindEquationWithGivenVertexAndOnePoint: [ItemType.vertex, ItemType.point],
    SolutionType.FindEquationWithGivenOneRootAndTwoPoints: [ItemType.root, ItemType.point, ItemType.point],
    SolutionType.FindEquationWithGivenThreePoints: [ItemType.point, ItemType.point, ItemType.point],
    SolutionType.FindDiscriminantOfEquation: [ItemType.quadraticStandard],
    SolutionType.FindIntersectionsOfParabolaAndLine: [ItemType.quadraticStandard, ItemType.line],
    SolutionType.FindIntersectionsOfTwoParabolas: [ItemType.quadraticStandard, ItemType.quadraticStandard],
    SolutionType.SketchTheVertexFormLabelingImportantPoints: [ItemType.quadraticVertex],
    SolutionType.SketchTheFactoredFormLabelingImportantPoints: [ItemType.quadraticFactored],
    SolutionType.FindSumOfRootsWithGivenVertex: [ItemType.vertex],
});

extension SolutionIngredients on SolutionType {
    bool isThis(List<ItemType> type) {
        ingredients[this].sort((a, b) => ItemType.values.indexOf(a).compareTo(ItemType.values.indexOf(b)));
        type.sort((a, b) => ItemType.values.indexOf(a).compareTo(ItemType.values.indexOf(b)));
        int idx = 0;
        type.forEach((element) {
            if (idx < ingredients[this].length && ingredients[this][idx] == element) ++idx;
        });
        return idx == ingredients[this].length;
    }
}