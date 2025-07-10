void todasTablasMultiplicar() {
  for (int i = 1; i <= 10; i++) {
    print("Tabla del $i");
    for (int j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
    }
    print(""); // estoy generando líneas vacías entre tablas
  }
}
