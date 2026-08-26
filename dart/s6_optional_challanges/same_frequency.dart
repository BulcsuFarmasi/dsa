bool sameFrequency(int number, int otherNumber) {
  final  String numberString = number.toString();
  final String otherNumberString = otherNumber.toString();

  if (numberString.length != otherNumberString.length) {
    return false;
  }

  final Map<String, int> lookup = {};

  for (int i = 0; i < numberString.length; i++) {
    String digit = numberString[i];
    lookup[digit] = (lookup[digit] ?? 0) + 1;
  
  }

  for (int i = 0; i < otherNumberString.length; i++) {
    String digit = otherNumberString[i];

    if (!lookup.containsKey(digit) || lookup[digit] == 0) {
      return false;
    }

    lookup[digit] = lookup[digit]! - 1;
  }

  return true;
}

void main () {
  print(sameFrequency(22,2222));
}