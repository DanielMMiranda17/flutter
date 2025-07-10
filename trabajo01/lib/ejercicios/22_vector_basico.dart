void vectorBasico() {
  List<int> numeros = List.filled(10, 0);
  for (int i = 0; i < numeros.length; i++) {
    numeros[i] = i + 1;
  }

  print("Contenido del vector:");
  for (int i = 0; i < numeros.length; i++) {
    print("Índice $i = ${numeros[i]}");
  }
}
