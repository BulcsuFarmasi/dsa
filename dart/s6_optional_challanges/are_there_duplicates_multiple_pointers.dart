bool areThereDuplicates<T extends Comparable<T>>(List<T> args) {
  args.sort();

  int left = 0;
  int right = 1;

  while (right < args.length) {
    if (args[left] == args[right]) {
      return true;
    }

    left++;
    right++;
  }

  return false;
}

void main() {
  print(areThereDuplicates<String>(['a', 'b', 'c', 'a']));
}
