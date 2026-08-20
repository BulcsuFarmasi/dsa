int? maxSublistSum(List<int> list, int num) {
  if (num > list.length) {
    return null;
  }

  double max = -double.infinity;

  for (int i = 0; i < list.length - num +1; i++) {
    double temp = 0;
    for (int j = 0; j < num; j++) {
      temp += list[i + j];
    }
    if (temp > max) {
      max = temp;
    }
  }
  return max.toInt();
}


void main() {
  print(maxSublistSum([2,6,9,2,1,8,5,6,3], 3));
}