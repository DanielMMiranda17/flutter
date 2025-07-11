import 'dart:io';

void vectorOrdenado() {
  stdout.write("¿Cuántos números va a ingresar? ");
  int total = int.parse(stdin.readLineSync()!);

  List<int> listaNumeros = [];

  for (var indice = 1; indice <= total; indice++) {
    stdout.write("Ingrese el número $indice: ");
    int valor = int.parse(stdin.readLineSync()!);
    listaNumeros.add(valor);
  }

  stdout.write("¿Desea orden ascendente (a) o descendente (d)? ");
  String opcionOrden = stdin.readLineSync()!.toLowerCase();

  if (opcionOrden == 'a') {
    listaNumeros.sort();
  } else if (opcionOrden == 'd') {
    listaNumeros.sort((x, y) => y.compareTo(x));
  } else {
    print("Opción no reconocida, mostrando orden original.");
  }

  print("Lista ordenada resultante: $listaNumeros");
}
