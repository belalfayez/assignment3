import 'dart:io';

int calculate() {
  return 6 * 7;
}

List<int> bubbleSort(List<int> list) {
  //Big O is n2
  int nElems = list.length;
  int outer, inner;
  int swaps = 0, comp = 0;
  for (outer = nElems - 1; outer >= 1; outer--) {
      for (inner = 0; inner < outer; inner++) {
        comp++;
        if (list[inner] > list[inner + 1]) {
          //Swap
          swap(list, inner, inner + 1);
          swaps++;
        }
      }
    }

  print('number of swaps is $swaps and compressions is $comp ');
  return list;
}

List<int> optimizedBubbleSort(List<int> list) {
  bool checkSwap = true;
  int n = list.length;
  var iterations = 0, swaps = 0;
  int o, i;
  for (o=n-1;o>=1;o--) {
    checkSwap = false;
    for (i = 0; i < o; i++) {
      if (list[i] > list[i + 1]) {
        swap(list, i, i + 1);
        checkSwap = true;
        swaps++;
      }
      iterations++;
    }
    if(!checkSwap){
      break;
    }
  }
  print('number of swaps is $swaps and compressions is $iterations;');
  return list;
}

List<int>stableSelectionSort(List<int> list){
  int n = list.length;
  int minIndex = 0;
  for (int i = 0 ; i < n-1 ; i++){
    minIndex = i;
    for(int j = i+1; i<n; j++){
      if(list[minIndex] < list[j]){
        minIndex = j;
      }
    }
    int key = list[minIndex];
    while(minIndex > i){
      list[minIndex] = list[minIndex-1];
      minIndex--;
    }
    list[i]=key;
  }
  return list;
}


void swap(List<int> list, int index1, int index2) {
  var temp = list[index1];
  list[index1] = list[index2];
  list[index2] = temp;
}
extension SortedList<E extends Comparable<dynamic>> on List<E> {
  int? binarySearch(E value, [int? start, int? end]) {
    // 1
    final startIndex = start ?? 0;
    final endIndex = end ?? length;
// 2
    if (startIndex >= endIndex) {
      return null;
    }
// 3
    final size = endIndex - startIndex;
    final middle = startIndex + size ~/ 2;
// 4
    if (this[middle] == value) {
      return middle;
// 5
    } else if (value.compareTo(this[middle]) < 0) {
      return binarySearch(value, startIndex, middle);
    } else {
      return binarySearch(value, middle + 1, endIndex);
    }

  }
}


int getIndexUsingLinearSearch(int key, List<int> list){

  int n = list.length;
  int position = -1;
  for(int i = 0 ; i < n;i++){
    if(key == list[i]){
      position = i;
    }
  }
    return position;
}

int getIndexFaster(List<int>list, int value){
  int position  =-1;
  int start = 0 ;
  int end = list.length;
  int middle = ((start+end)/2).floor();
  while(list[middle] != value && start<end){
    if(value < list[middle]){
      end = middle -1;
    }else{
      start = middle+1;
    }
    middle = ((start+end)/2).floor();
  }

  if(list[middle] == value){
    position = middle;
  }
  return position;
}

List<int> getArrayFromUser() {
  final list = <int>[];
  int? len;
  do {
    print('Enter the length of the array');
    len = int.tryParse(stdin.readLineSync() ?? '');
  } while (len == null);
  for (var i = 0; i < len; i++) {
    print('Enter the array element');
    int? input;
    do {
      input = int.tryParse(stdin.readLineSync() ?? '');
    } while (input == null);
    list.add(input);
  }
  return list;
}

int getMin(List<int> arr) {
  return arr.reduce((a, b) => a < b ? a : b);
}

int calculateEven(List<int> arr) {
  int sum = 0;
  for (int i in arr) {
    if (i % 2 == 0) {
      sum += i;
    }
  }
  return sum;
}

int count2(List<int> arr) {
  int num2 = 2, count = 0;
  for (int i in arr) {
    if (i == num2) {
      count++;
    }
  }
  return count;
}

String countGeneral(List<int> arr) {
  String counter = '';
  var countedNumberList = <int>[];
  int count = 0;
  for (int i in arr) {
    for (int j = 0; j < arr.length; j++) {
      if (!countedNumberList.contains(i)) {
        if (i == arr[j]) {
          count++;
        }
      }
    }
    if (count != 0) {
      counter += '$i is counted $count times \n';
      count = 0;
    }
    countedNumberList.add(i);
  }
  return counter;
}
/**
 * List<int> optimizedBubbleSort(List<int> list) {
    bool checkSwap = true;
    var iterations = 0, swaps = 0;
    while (checkSwap) {
    checkSwap = false;
    for (int i = 0; i < list.length - 1; i++) {
    if (list[i] > list[i + 1]) {
    swap(list, i, i + 1);
    checkSwap = true;
    swaps++;
    }
    iterations++;
    }
    }*/