import 'package:assignment3/assignment3.dart';

void main(List<String> arguments) {
  /**
   * Write a function getMin that takes array as parameter and returns the min
      value in the array
   * */

 /* print('Q1 ) Write a function getMin that takes array as parameter and returns the minvalue in the array');
  var list = getArrayFromUser();
  print(list);
  int min = getMin(list);
  print('The minimum of the array is : $min');

  print(
      '------------------------------------------------------------------------------------------------------------------------------------');

  print('Q2 ) Write a function CalculateEven that takes array as parameter and calculate the sum of even numbers');
  list = getArrayFromUser();
  print(list);
  int sum = calculateEven(list);
  print('The sum of even numbers is : $sum');

  print(
      '------------------------------------------------------------------------------------------------------------------------------------');

  print('Q3 ) Write a function count2 that takes array as parameter and counts occurrences of number 2');
  list = getArrayFromUser();
  print(list);
  int countOf2 = count2(list);
  print('occurrences of number 2 is : $countOf2');*/

  print(
      '------------------------------------------------------------------------------------------------------------------------------------');

  print('Q4 ) Modify the above function to be CountGeneral that takes array as '
      'parameter and count occurrences of every number in the array and print it');
  var list = getArrayFromUser();
  print(list);
  String countOfNums = countGeneral(list);
  print('occurrences of numbers in the array is : $countOfNums');

  print(
      '------------------------------------------------------------------------------------------------------------------------------------');

  print('Q5&Q6 ) Write function bubbleSort & optimized bubbleSort that takes array and sorts it');
  list = getArrayFromUser();
  print(list);

  print('using a bubble sort');
  var sortedList = bubbleSort(list);
  print('the array after sort : $sortedList');
  print('using optimized bubble sort');
  list = getArrayFromUser();
  var optimizedSortedList = optimizedBubbleSort(list);
  print('the array after sort : $optimizedSortedList');

  print(
      '------------------------------------------------------------------------------------------------------------------------------------');

  print('Q7 ) Write function selectionSort that takes array and sorts it');
  print('solution based on stable selection sort');
  list = getArrayFromUser();
  sortedList = stableSelectionSort(list);
  print(
      '------------------------------------------------------------------------------------------------------------------------------------');


}


