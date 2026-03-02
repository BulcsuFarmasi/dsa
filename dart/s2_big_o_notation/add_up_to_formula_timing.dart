int addUpTo(int n) {
  return (n * (n + 1) / 2).toInt();
}

void main() {
   final Stopwatch stopwatch = Stopwatch();
  stopwatch.start(); 
  addUpTo(1000000000);

  print("Elapsed Time: ${stopwatch.elapsedMilliseconds / 1000 } seconds.");
}