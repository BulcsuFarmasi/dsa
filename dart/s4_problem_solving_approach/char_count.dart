Map<String, int> charCount(final String str) {
  final Map<String, int> result = {};
  for (int i = 0; i < str.length; i++) {
    final String char = str[i].toLowerCase();
    if (RegExp(r'[a-z0-9]').hasMatch(char)) {
      if (result[char] != null) {
        result[char] = result[char]! + 1;
      } else {
        result[char] = 1;
      }
    }
  }

  return result;
}

void main() {
  print(charCount("Hi there!"));
}
