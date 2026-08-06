int addUpTo(int n) {
  return (n * (n + 1) / 2).toInt();
}

void main() {
  final Stopwatch stopwatch = Stopwatch()..start();
  addUpTo(1000000000);
  stopwatch.stop();
  print("Time elapsed: ${stopwatch.elapsedMicroseconds / 1000 / 1000} seconds");
}
