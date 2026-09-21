bool constructNote(String message, String letters) {
  final Map<String, int> messageFrequency = {};

  for (int i = 0; i < message.length; i++) {
    final String char = message[i];

    messageFrequency[char] = (messageFrequency[char] ?? 0) + 1;
  }

  final Map<String, int> letterFrequency = {};

  for (int i = 0; i < letters.length; i++) {
    final String char = letters[i];

    letterFrequency[char] = (letterFrequency[char] ?? 0) + 1;
  }

  for (String frequency in messageFrequency.keys) {
    if (letterFrequency[frequency] == null ||
        letterFrequency[frequency] != messageFrequency[frequency]) {
      return false;
    }
  }

  return true;
}

void main() {
  print(constructNote('aabbcc', 'bcabcaddff'));
}
