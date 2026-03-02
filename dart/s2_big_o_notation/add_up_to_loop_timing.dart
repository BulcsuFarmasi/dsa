int addUpTo(int n) {
  int total = 0;

  for (int i = 1; i <= n; i++) {
    total += i;
  }

  return total;
}

void main () {
  final Stopwatch stopwatch = Stopwatch();
  stopwatch.start(); 
  addUpTo(1000000000);

  print("Elapsed Time: ${stopwatch.elapsedMilliseconds / 1000} seconds.");
}