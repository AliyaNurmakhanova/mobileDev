import 'dart:math';

void fillList() {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print("List: $list");
}

dynamic maxElement() {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print("Max element is: ${list.reduce((max))}");
}

dynamic minElement() {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print("Min element is: ${list.reduce((min))}");
}

void main() {
  fillList();
  maxElement();
  minElement();
}
