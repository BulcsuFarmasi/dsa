import 'dart:math';

int? maxSublistSum(List<int> list, int num) {
  if (list.length < num) return null;
  int maxSum = 0;
  for (int i = 0; i < num; i++) {
    maxSum += list[i];
  }
  int tempSum = maxSum;
  for (int i = num; i < list.length; i++) {
    tempSum = tempSum - list[i - num] + list[i];
    maxSum = max(tempSum, maxSum);
  }

  return maxSum;
}

void main() {
  print(maxSublistSum([2,6,9,2,1,8,5,6,3], 3));
}