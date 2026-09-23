List<int> findAlDuplicates(List<int> numbers) {
  if (numbers.isEmpty) {
    return [];
  }

  final Map<int, int> numberFrequency = {};

  for (int number in numbers) {
    numberFrequency[number] = (numberFrequency[number] ?? 0) + 1;
  }

  const int desiredCount = 2;

  final List<int> duplicates = [];

  for (int number in numberFrequency.keys) {
    if (numberFrequency[number] == desiredCount) {
      duplicates.add(number);
    }
  }

  return duplicates;
}

void main () {
  print(findAlDuplicates([]));
}