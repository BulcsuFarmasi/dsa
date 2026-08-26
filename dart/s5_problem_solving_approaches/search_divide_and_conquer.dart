int search (List<int> list, int value) {
  int min = 0;
  int max = list.length - 1;

  while (min <= max) {
    int middle = ((min + max) / 2).floor();

    if (list[middle] < value) {
      min = middle + 1;
    } else if (list[middle] > value) {
      max = middle - 1;
    } else {
      return middle;
    }
  }

  return -1;
}

void main() {
  print(search([1,3,6,12,55,78],56));
}