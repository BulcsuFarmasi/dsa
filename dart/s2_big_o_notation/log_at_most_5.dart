import 'dart:math';

void logAtMost5(final int n) {
  for (int i = 1; i <= min(5, n); i++) {
    print(i);
  }
}

void main () {
  logAtMost5(4);
  logAtMost5(12);
}