bool validAnagram(String word1, String word2) {
  if (word1.length != word2.length) {
    return false;
  }

  final Map<String, int> frequencyCounter1 = {};
  final Map<String, int> frequencyCounter2 = {};

  for (int i = 0; i < word1.length; i++) {
    final String char = word1[i];
    frequencyCounter1[char] = (frequencyCounter1[char] ?? 0) + 1;
  }

  for (int j = 0; j < word2.length; j++) {
    final String char = word2[j];
    frequencyCounter2[char] = (frequencyCounter2[char] ?? 0) + 1;
  }

  for (String key in frequencyCounter1.keys) {
    if (!frequencyCounter2.containsKey(key)) {
      return false;
    }
    if (frequencyCounter1[key] != frequencyCounter2[key]) {
      return false;
    }
  }

  return true;
}

void main(List<String> args) {
  print(validAnagram('texttwisttime', 'timetexttwist'));
}
