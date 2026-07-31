

void countUpAndDown(int n) {
  print("Going up!");
  for (int i = 0; i < n; i++) {
    print(i);
  }
  print("At the top!\n Going down...");
  for (int j = n - 1; j >= 0; j--) {
    print(j);
  }
  print("Back down. Bye!");
}

void main () {
  countUpAndDown(4);
}