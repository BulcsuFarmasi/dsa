import 'dart:math';

bool same(List<int> list1, List<int> list2) {
  if (list1.length != list2.length) {
    return false;
  }

  for (int i = 0; i < list1.length; i++) {
    int? foundIndex;
    for (int j = 0; j < list2.length; j++) {
      if (pow(list1[i], 2) == list2[j]) {
        foundIndex = j;
        break;
      }
    }
    if (foundIndex != null) {
      list2.removeAt(foundIndex);
    } else {
      return false;
    }
  }
  return list2.isEmpty;
}

void main(List<String> args) {
  print(same([4, 4, 2], [16, 4]));
}
