bool findPair(List<int> numbers, int difference) {
  numbers.sort();

  int i = 0;
  int j = 1;

  while(j < numbers.length) {
    if (numbers[j] - numbers[i] == difference.abs()) {
      return true;
    } else if (numbers[j] - numbers[i] < difference.abs()) {
      j++;
    } else {
      i++;
    }

    if (i == j) {
      j++;
    }
  }

  return false;
}

void main () {
  print(findPair([5,2,1,6], 4));
}