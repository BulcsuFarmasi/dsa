List<int> double(final List<int> list) {
  final List<int> newList = [];

  for (int i = 0; i < list.length; i++) {
    newList.add(2 * list[i]);
  }

  return newList;
}

void main () {
  print(double([6,10, 3, 11]));
}