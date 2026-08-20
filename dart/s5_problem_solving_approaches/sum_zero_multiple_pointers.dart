List<int>? sumZero(List<int> list) {
  int left = 0;
  int right = list.length - 1;

  while(left < right) {
    final int sum = list[left] + list[right];
    if (sum == 0) {
      return [list[left], list[right]];
    } else if (sum > 0) {
      right--;
    } else {
      left++;
    }
  }
}

void main() {
  print(sumZero([-12,-8,-5,1,2,5,7,10]));
}