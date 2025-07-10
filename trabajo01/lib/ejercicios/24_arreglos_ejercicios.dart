void arregloEjercicios() {
  List<int> lista = [5, 3, 9, 1, 6, 8, 2, 4, 7, 0];

  print("Orden Ascendente:");
  List<int> ascendente = [...lista]..sort();
  print(ascendente);

  print("Orden Descendente:");
  List<int> descendente = [...lista]..sort((a, b) => b.compareTo(a));
  print(descendente);
}
