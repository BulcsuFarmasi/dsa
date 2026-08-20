List<int>? sumZero(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    for (int j = i + 1; j < list.length; j++) {
      if (list[i] + list[j] == 0) {
        return [list[i], list[j]];
      }
    }
  }
  return null;
}

void main() {
  print(sumZero([-8, -7, 1, 2, 3, 5, 6]));
}
