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

HashMap<SolutionType, HashSet<ItemType>> ingredients = HashMap.from(<SolutionType, HashSet<ItemType>>{
    SolutionType.FindRootsFromFactoredForm: HashSet.from([ItemType.quadraticFactored]),
    SolutionType.FindRootsFromVertexForm: HashSet.from([ItemType.quadraticVertex]),
    SolutionType.FindRootsFromStandardFormUsingFactoring: HashSet.from([ItemType.quadraticStandard]),
    SolutionType.FindRootsFromStandardFormUsingCompletingTheSquare: HashSet.from([ItemType.quadraticStandard]),
    SolutionType.FindRootsFromStandardFormUsingDiscriminant: HashSet.from([ItemType.quadraticStandard]),
    SolutionType.FindSumAndProductOfRoots: HashSet.from([ItemType.quadraticStandard]),
    SolutionType.FindVertexOfEquation:HashSet.from([ItemType.quadraticStandard]),
    SolutionType.FindEquationWithGivenTwoRootsAndOnePoint: HashSet.from([ItemType.root, ItemType.root, ItemType.point]),
    SolutionType.FindEquationWithGivenVertexAndOnePoint: HashSet.from([ItemType.vertex, ItemType.point]),
    SolutionType.FindEquationWithGivenOneRootAndTwoPoints: HashSet.from([ItemType.root, ItemType.point, ItemType.point]),
    SolutionType.FindEquationWithGivenThreePoints: HashSet.from([ItemType.point, ItemType.point, ItemType.point]),
    SolutionType.FindDiscriminantOfEquation: HashSet.from([ItemType.quadraticStandard]),
    SolutionType.FindIntersectionsOfParabolaAndLine: HashSet.from([ItemType.quadraticStandard, ItemType.line]),
    SolutionType.FindIntersectionsOfTwoParabolas: HashSet.from([ItemType.quadraticStandard, ItemType.quadraticStandard]),
    SolutionType.SketchTheVertexFormLabelingImportantPoints: HashSet.from([ItemType.quadraticVertex]),
    SolutionType.SketchTheFactoredFormLabelingImportantPoints: HashSet.from([ItemType.quadraticFactored]),
    SolutionType.FindSumOfRootsWithGivenVertex: HashSet.from([ItemType.vertex, ItemType.vertex]),
});

extension SolutionIngredients on SolutionType {
    bool isThis(HashSet<ItemType> type) {
        return type.where((element) => ingredients[this].contains(element)).toList().length == ingredients[this].length; //this solution is contained
    }
}