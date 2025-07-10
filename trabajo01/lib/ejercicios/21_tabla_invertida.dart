void tablaInvertida() {
  for (int i = 10; i >= 1; i--) {
    print("Tabla del $i");
    for (int j = 10; j >= 1; j--) {
      print("$i x $j = ${i * j}");
    }
    print("");
  }
}
