void multiploDe2y3y5() {
  print("Múltiplos de 2, 3 y 5 del 1 al 100:");
  for (int i = 1; i <= 100; i++) {
    if (i % 2 == 0 && i % 3 == 0 && i % 5 == 0) {
      print(i);
    }
  }
}
