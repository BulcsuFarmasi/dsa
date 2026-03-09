int sum(final List<int> list) {
  int total = 0;
  for (int i = 0; i < list.length; i++) {
    total += list[i];
  }
  return total;
}

void main () {
  print(sum([3,121, 5]));
}