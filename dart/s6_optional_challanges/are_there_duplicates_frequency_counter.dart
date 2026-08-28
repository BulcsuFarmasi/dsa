bool areThereDuplicates(List<dynamic> args) {
  final Map<dynamic, int> frequency = {};

  for (dynamic arg in args) {
    frequency[arg] = (frequency[arg] ?? 0)  + 1;

    if (frequency[arg]! > 1) {
      return true;
    }
  }
  return false;
}

void main () {
  print(areThereDuplicates(["a", "b", "c", "a"]));
}