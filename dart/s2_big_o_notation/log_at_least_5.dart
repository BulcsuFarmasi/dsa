import 'dart:math';

void logAtLeast5(final int n) {
  for (int i = 1; i <= max(5, n); i++) {
    print(i);
  }
}

void main () {
  logAtLeast5(2);
  logAtLeast5(7);
}