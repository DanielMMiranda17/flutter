import 'dart:io';

void vectorOrdenado() {
  stdout.write("¿Cuántos elementos quieres? ");
  int cantidad = int.parse(stdin.readLineSync()!);

  List<int> numeros = [];

  for (int i = 0; i < cantidad; i++) {
    stdout.write("Número ${i + 1}: ");
    int n = int.parse(stdin.readLineSync()!);
    numeros.add(n);
  }

  stdout.write("¿Orden ascendente (a) o descendente (d)? ");
  String orden = stdin.readLineSync()!;

  if (orden == 'a') {
    numeros.sort();
  } else {
    numeros.sort((a, b) => b.compareTo(a));
  }

  print("Vector ordenado: $numeros");
}
