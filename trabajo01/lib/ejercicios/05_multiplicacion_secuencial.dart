import 'dart:io';

void multiplicacionSecuencial() {
  stdout.write("Ingrese el primer número: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  double b = double.parse(stdin.readLineSync()!);

  double producto = a * b;
  print("El producto del número $a con el número $b es: $producto");
}
