void paresEImpares() {
  print("Números del 1 al 100 con su tipo:");
  for (int i = 1; i <= 100; i++) {
    if (i % 2 == 0) {
      print("$i es par");
    } else {
      print("$i es impar");
    }
  }
}
