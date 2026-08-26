int countUniqueValues(List<int> list) {
  if (list.isEmpty) {
    return 0;
  }

  int index = 1;
  int counter = 1;

  while (index < list.length) {
    if (list[index] != list[index - 1]) {
      counter++;
    }
    index++;
  }

  return counter;
}

void main() {
  print(countUniqueValues([1,2,3,4,4,4,7,7,12,12,13]));
}
