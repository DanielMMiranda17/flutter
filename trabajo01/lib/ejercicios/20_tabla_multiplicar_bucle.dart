void todasTablasMultiplicar() {
  List.generate(10, (index) {
    int numero = index + 1;
    print("Tabla del número $numero:");

    for (int multiplicador = 1; multiplicador <= 10; multiplicador++) {
      int resultado = numero * multiplicador;
      print("$numero x $multiplicador = $resultado");
    }

    print(""); // Estoy dando lineas de espacios vacios
  });
}
