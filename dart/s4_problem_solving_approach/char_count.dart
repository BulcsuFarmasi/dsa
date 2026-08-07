Map<String, int> charCount(final String str) {
    // make object
    final Map<String, int> result = {};
    // loop over string, for each character
    for (int i = 0; i < str.length; i++) {
      final String char = str[i];
      // if the char is a number / letter AND a key in object, add one to count
      if (result[char] != null) {
        result[char] = result[char]! + 1;
      // if the char is a number / letter AND  not in object, add it and set value to 1
      } else {
        result[char] = 1;
      }
    }


        // if character is something else (space, period, etc. ) don't do anything
    // return object at end
    return result;
}

void main() {
  print(charCount("hello"));
}