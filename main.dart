import 'dart:math';

import 'Sorting/insertionsort.dart';
import 'Sorting/mergesort.dart';
import 'miscellaneous/fibonnacci.dart';
import 'miscellaneous/memoiazation.dart';
import 'Sorting/quicksort.dart';

void main() {
  //############## QUICK SORT #####

  final List<int> randomBigList = List.generate(
    Random().nextInt(Random().nextInt(100000)),
    (i) => i * Random().nextInt(10000),
  );

  final List<int> list = [...randomBigList];
  // final List<int> list = [8, 2, 90, 1, 33, 28, 55, 34];
  // print("#QUICKSORT: $list");

  final quickWatch = Stopwatch()..start();
  quickSort(list, 0, list.length - 1);
  quickWatch.stop();

  print("#QUICKSORT sorted in ${quickWatch.elapsedMilliseconds}ms");

  //############## QUICK SORT 2 #####

  final List<int> list2 = [...randomBigList];
  // final List<int> list2 = [8, 2, 90, 1, 33, 28, 55, 34];
  // print("#QUICKSORT2: $list2");

  final quickWatch2 = Stopwatch()..start();
  quickSort2(list2);
  // final sorted = quickSort2(list2);
  quickWatch2.stop();

  print("#QUICKSORT2 sorted in ${quickWatch2.elapsedMilliseconds}ms");

  //############## MERGESORT #####

  final List<int> mergeList = [...randomBigList];

  final mergeWatch2 = Stopwatch()..start();
  mergeSort(mergeList);
  mergeWatch2.stop();

  print("#MERGESORT sorted in ${mergeWatch2.elapsedMilliseconds}ms");

  //############## INSERTIONSORT #####

  final List<int> insertList = [...randomBigList];

  final insertWatch2 = Stopwatch()..start();
  insertionSort(insertList);
  insertWatch2.stop();

  print("#INSERTIONSORT sorted in ${insertWatch2.elapsedMilliseconds}ms");

  //############## FIBON #####

  fibn(7);

  //############## MEMOIZATION #####
  memoizationFake(4);
  memoizationFake(8);
  memoizationFake(4);
  memoizationFake(8);
}