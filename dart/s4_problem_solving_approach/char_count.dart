Map<String, int> charCount(final String str) {
  final Map<String, int> result = {};
  for (int i = 0; i < str.length; i++) {
    String char = str[i].toLowerCase();
    if (isAlphaNumeric(char)) {
        result[char] = (result[char] ?? 0) + 1;
    }
  }

  return result;
}

bool isAlphaNumeric(final String char) {
  final int code = char.codeUnitAt(0);
      if (!(code > 47 && code < 58) &&// numeric
        !(code > 96 && code < 123)) { // lower alpha
        return false;
    }
  return true;
}

void main() {
  print(charCount("Hi there!"));
}
