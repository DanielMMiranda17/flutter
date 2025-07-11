void arregloEjercicios() {
  List<int> numeros = [5, 3, 9, 1, 6, 8, 2, 4, 7, 0];

  print("Lista ordenada de menor a mayor:");
  var ordenMenorMayor = List.of(numeros)..sort();
  print(ordenMenorMayor);

  print("Lista ordenada de mayor a menor:");
  var ordenMayorMenor = List.of(numeros)
    ..sort((x, y) => y.compareTo(x));
  print(ordenMayorMenor);
}
