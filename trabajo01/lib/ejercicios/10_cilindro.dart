import 'dart:io';
import 'dart:math';

void cilindroConTapa() {
  stdout.write("Ingrese el valor del radio: ");
  double r = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la altura del cilindro: ");
  double h = double.parse(stdin.readLineSync()!);

  if (r <= 0 || h <= 0) {
    print("Error: El radio y la altura deben ser mayores que cero.");
    return;
  }

  double superficieLateral = 2 * pi * r * h;
  double superficieBase = pi * pow(r, 2);
  double superficieTotal = superficieLateral + 2 * superficieBase;
  double capacidad = superficieBase * h;

  print("Superficie total del cilindro cerrado: ${superficieTotal.toStringAsFixed(2)} unidades cuadradas");
  print("Volumen interno del cilindro: ${capacidad.toStringAsFixed(2)} unidades cúbicas");
}
