void tablaInvertida() {
  final tablas = List.generate(10, (index) => 10 - index);

  for (var numero in tablas) {
    print("Tabla del número $numero (invertida):");

    for (int multiplicador = 10; multiplicador >= 1; multiplicador--) {
      final producto = numero * multiplicador;
      print("$numero x $multiplicador = $producto");
    }

    print(""); // lo mismo que antes estoy haciendo espacios
  }
}
