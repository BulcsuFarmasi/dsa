import 'dart:math';

bool same(List<int> list1, List<int> list2) {
  if (list1.length != list2.length) {
    return false;
  }

  Map<int, int> frequencyCounter1 = {};
  Map<int, int> frequencyCounter2 = {};

  for (int val in list1) {
    frequencyCounter1[val] = (frequencyCounter1[val] ?? 0) + 1;
  }

  for (int val in list2) {
    frequencyCounter2[val] = (frequencyCounter2[val] ?? 0) + 1;
  }

  for (int key in frequencyCounter1.keys) {
    if (!frequencyCounter2.containsKey(pow(key, 2)) ) {
      return false;
    }
    if (frequencyCounter2[pow(key,2)] != frequencyCounter1[key]) {
      return false;
    }
  }

  return true;
 }

 void main(List<String> args) {
  print(same([1,2,3,4], [4,9,1,15]));
}