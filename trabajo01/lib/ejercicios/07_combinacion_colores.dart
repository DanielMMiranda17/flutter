import 'dart:io';

void combinacionColores() {
  print("Menú de colores:\n1. Amarillo\n2. Azul\n3. Rojo");

  stdout.write("Digite el primer número: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Digite el segundo número: ");
  int b = int.parse(stdin.readLineSync()!);

  String resultado;

  if ((a == 1 && b == 2) || (a == 2 && b == 1)) {
    resultado = "Verde";
  } else if ((a == 1 && b == 3) || (a == 3 && b == 1)) {
    resultado = "Naranja";
  } else if ((a == 2 && b == 3) || (a == 3 && b == 2)) {
    resultado = "Violeta";
  } else if (a == b) {
    resultado = "Mismo color";
  } else {
    resultado = "Combinación no válida";
  }

  print("Su combinación es: $resultado");
}
